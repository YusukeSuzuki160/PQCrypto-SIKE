// montgomery_auto_rewriter.cpp
//  - モンゴメリ乗算 / モンゴメリ・リダクションのパターンを自動検出し、
//    HLS 最適化された呼び出し（mont::MontOps<...>::mul / ::redc）へ置換する
//    Clang LibTooling ツール。
//  - 設計は ../ntt_converter, ../mpx_mul_converter を踏襲。
//
// 検出の核となる特徴:
//   1. 多倍長走査ループ（語数 nwords を回す for が 2 段以上ネスト）
//   2. モンゴメリ定数 n'[0]（-N^{-1} mod W）による語ごとの還元乗算
//      （引数名 mprime/m0inv/n0inv/qinv/inv/np 等 × の検出）、
//      もしくは montgomery_reduce / redc / mont_reduce 等の呼び出し
//   3. 法 N（引数名 mod/N/p/prime/modulus 等）の参照
//   （任意）4. 末尾の条件付き減算（定数時間の最終補正）
//
// 使い方:
//   検出のみ:
//     $ montgomery_auto_rewriter --dry-run --trace your.cpp -- -std=c++17 -I./include
//   変換実施:
//     $ montgomery_auto_rewriter --max-nwords=8 --output=out.cpp \
//         your.cpp -- -std=c++17 -I./include
//   定数名を追加する場合:
//     $ montgomery_auto_rewriter --inv-name=Nprime --mod-name=modulus \
//         --dry-run your.cpp -- -std=c++17 -I./include

#include <cctype>
#include <memory>
#include <optional>
#include <sstream>
#include <string>
#include <unordered_set>
#include <vector>

#include "clang/AST/AST.h"
#include "clang/AST/RecursiveASTVisitor.h"
#include "clang/ASTMatchers/ASTMatchFinder.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Frontend/FrontendActions.h"
#include "clang/Lex/Lexer.h"
#include "clang/Rewrite/Core/Rewriter.h"
#include "clang/Tooling/CommonOptionsParser.h"
#include "clang/Tooling/Tooling.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"

using namespace clang;
using namespace clang::tooling;
using namespace clang::ast_matchers;

// ===================== CLI options =====================
static llvm::cl::OptionCategory Cat("montgomery-auto-rewriter options");

static llvm::cl::opt<unsigned> MaxNwords(
    "max-nwords",
    llvm::cl::desc("MAX_NWORDS value to embed (nwords <= MAX_NWORDS)"),
    llvm::cl::init(8), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> DryRun(
    "dry-run", llvm::cl::desc("Detect only; do not rewrite"),
    llvm::cl::init(false), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> TraceOpt(
    "trace", llvm::cl::desc("Trace detected patterns and reasons"),
    llvm::cl::init(false), llvm::cl::cat(Cat));

static llvm::cl::opt<std::string> OutputFile(
    "output",
    llvm::cl::desc("Output file name (if not specified, overwrites input)"),
    llvm::cl::init(""), llvm::cl::cat(Cat));

static llvm::cl::opt<std::string> IncludeHeader(
    "lib-header",
    llvm::cl::desc("Header path for mont_ops.hpp"),
    llvm::cl::init("mont_ops.hpp"), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> InsertIncludes(
    "insert-includes",
    llvm::cl::desc("Insert #include <climits>, <type_traits> and lib-header"),
    llvm::cl::init(true), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> NoHLSDirectives(
    "no-hls-directives",
    llvm::cl::desc("Do not insert HLS directives in generated code"),
    llvm::cl::init(false), llvm::cl::cat(Cat));

// 変換種別の強制: auto / mul / redc
static llvm::cl::opt<std::string> ModeOpt(
    "mode",
    llvm::cl::desc("Force conversion kind: auto (default), mul, redc"),
    llvm::cl::init("auto"), llvm::cl::cat(Cat));

// 還元乗算の最小回数（誤検出抑止）
static llvm::cl::opt<unsigned> MinRedcMul(
    "min-redc-mul",
    llvm::cl::desc("Min number of multiplications by the inverse constant"),
    llvm::cl::init(1), llvm::cl::cat(Cat));

// 追加の「モンゴメリ定数」引数名
static llvm::cl::list<std::string> InvNames(
    "inv-name",
    llvm::cl::desc("Additional Montgomery-constant param names (e.g. --inv-name=Nprime)"),
    llvm::cl::ZeroOrMore, llvm::cl::cat(Cat));

// 追加の「法」引数名
static llvm::cl::list<std::string> ModNames(
    "mod-name",
    llvm::cl::desc("Additional modulus param names (e.g. --mod-name=modulus)"),
    llvm::cl::ZeroOrMore, llvm::cl::cat(Cat));

// 追加のリダクション関数名
static llvm::cl::list<std::string> RedcFuncNames(
    "redc-func",
    llvm::cl::desc("Additional Montgomery-reduction call names (e.g. --redc-func=__redc)"),
    llvm::cl::ZeroOrMore, llvm::cl::cat(Cat));

// ===================== ユーティリティ =====================

static std::string getSourceText(const Stmt *S, const SourceManager &SM,
                                  const LangOptions &LO)
{
    if (!S) return {};
    SourceLocation b = S->getBeginLoc();
    SourceLocation e = Lexer::getLocForEndOfToken(S->getEndLoc(), 0, SM, LO);
    if (b.isInvalid() || e.isInvalid()) return {};
    return std::string(SM.getCharacterData(b),
                       SM.getCharacterData(e) - SM.getCharacterData(b));
}

static std::string extractHLSPragmas(const CompoundStmt *Body,
                                     const SourceManager &SM,
                                     const LangOptions &LO)
{
    std::string txt = getSourceText(Body, SM, LO);
    std::stringstream in(txt);
    std::string line, out;
    while (std::getline(in, line)) {
        std::string s = line;
        auto p = s.find_first_not_of(" \t");
        if (p != std::string::npos) s = s.substr(p);
        if (s.rfind("#pragma HLS", 0) == 0)
            out += line + "\n";
    }
    return out;
}

// ラッパノードを剥ぐ
static const Expr *peel(const Expr *E)
{
    if (!E) return E;
    const Expr *cur = E;
    while (true) {
        const Expr *next = cur->IgnoreParenImpCasts();
        if (next != cur) { cur = next; continue; }
        if (auto *M = dyn_cast<MaterializeTemporaryExpr>(cur)) { cur = M->getSubExpr(); continue; }
        if (auto *B = dyn_cast<CXXBindTemporaryExpr>(cur))     { cur = B->getSubExpr(); continue; }
        if (auto *F = dyn_cast<CXXFunctionalCastExpr>(cur))    { cur = F->getSubExpr(); continue; }
        if (auto *S = dyn_cast<CStyleCastExpr>(cur))           { cur = S->getSubExpr(); continue; }
        if (auto *EC = dyn_cast<ExprWithCleanups>(cur))        { cur = EC->getSubExpr(); continue; }
        break;
    }
    return cur;
}

// ある式（部分木）の中に、指定名の DeclRefExpr が出現するか
static bool refsName(const Expr *E, const std::unordered_set<std::string> &names)
{
    if (!E) return false;
    struct V : RecursiveASTVisitor<V> {
        const std::unordered_set<std::string> *names;
        bool found = false;
        bool VisitDeclRefExpr(DeclRefExpr *DRE) {
            if (names->count(DRE->getNameInfo().getAsString()) > 0) found = true;
            return !found;
        }
    } v;
    v.names = &names;
    v.TraverseStmt(const_cast<Expr *>(E));
    return v.found;
}

// ===================== MontBodyScanner =====================
// 関数本体を走査し、モンゴメリ乗算/リダクションの特徴量を集計する。
class MontBodyScanner : public RecursiveASTVisitor<MontBodyScanner>
{
public:
    MontBodyScanner(std::unordered_set<std::string> invNames,
                    std::unordered_set<std::string> modNames,
                    std::unordered_set<std::string> redcFuncs)
        : invNames_(std::move(invNames))
        , modNames_(std::move(modNames))
        , redcFuncs_(std::move(redcFuncs))
    {
    }

    bool TraverseForStmt(ForStmt *FS)
    {
        if (!FS) return true;
        ++forDepth_;
        if (forDepth_ > maxForDepth_) maxForDepth_ = forDepth_;
        bool r = RecursiveASTVisitor::TraverseForStmt(FS);
        --forDepth_;
        return r;
    }

    // 乗算（BO_Mul / *=）— 還元乗算（× 逆元定数）か通常の部分積かを判定
    bool VisitBinaryOperator(BinaryOperator *BO)
    {
        if (BO->getOpcode() == BO_Mul || BO->getOpcode() == BO_MulAssign) {
            ++mulCount_;
            const Expr *L = peel(BO->getLHS());
            const Expr *R = peel(BO->getRHS());
            // 一方のオペランドにモンゴメリ定数が現れる乗算 → 還元乗算
            if (refsName(L, invNames_) || refsName(R, invNames_))
                ++redcMulCount_;
        }
        if (BO->getOpcode() == BO_Sub || BO->getOpcode() == BO_SubAssign)
            ++subCount_;
        if (BO->getOpcode() == BO_LT || BO->getOpcode() == BO_GT ||
            BO->getOpcode() == BO_LE || BO->getOpcode() == BO_GE)
            ++cmpCount_;

        // 法 N の参照を記録
        if (refsName(BO->getLHS(), modNames_) || refsName(BO->getRHS(), modNames_))
            modUse_ = true;
        return true;
    }

    // ap_uint 等の演算子オーバーロード
    bool VisitCXXOperatorCallExpr(CXXOperatorCallExpr *CE)
    {
        OverloadedOperatorKind Op = CE->getOperator();
        if (Op == OO_Star || Op == OO_StarEqual) {
            ++mulCount_;
            bool inv = false;
            for (unsigned i = 0; i < CE->getNumArgs(); ++i)
                if (refsName(CE->getArg(i), invNames_)) inv = true;
            if (inv) ++redcMulCount_;
        }
        if (Op == OO_Minus || Op == OO_MinusEqual) ++subCount_;
        if (Op == OO_Less || Op == OO_Greater ||
            Op == OO_LessEqual || Op == OO_GreaterEqual) ++cmpCount_;
        return true;
    }

    // モンゴメリ・リダクション関数の呼び出し
    bool VisitCallExpr(CallExpr *CE)
    {
        if (const FunctionDecl *FD = CE->getDirectCallee()) {
            std::string name = FD->getNameAsString();
            if (redcFuncs_.count(name) > 0) {
                ++redcCallCount_;
                // 引数に逆元 or 法が渡る呼び出しは還元乗算とみなす
                ++redcMulCount_;
            }
        }
        return true;
    }

    // 逆元定数の参照（乗算外でも使われているか）
    bool VisitDeclRefExpr(DeclRefExpr *DRE)
    {
        std::string n = DRE->getNameInfo().getAsString();
        if (invNames_.count(n) > 0) invUse_ = true;
        if (modNames_.count(n) > 0) modUse_ = true;
        return true;
    }

    // ---- 判定 ----
    bool isCandidate() const
    {
        return maxForDepth_ >= 2 &&
               (redcMulCount_ >= MinRedcMul || redcCallCount_ >= 1) &&
               modUse_;
    }

    unsigned maxForDepth()  const { return maxForDepth_; }
    unsigned mulCount()     const { return mulCount_; }
    unsigned redcMulCount() const { return redcMulCount_; }
    unsigned redcCallCount()const { return redcCallCount_; }
    unsigned subCount()     const { return subCount_; }
    unsigned cmpCount()     const { return cmpCount_; }
    bool     modUse()       const { return modUse_; }
    bool     invUse()       const { return invUse_; }
    bool     hasCondSub()   const { return subCount_ >= 1 && cmpCount_ >= 1; }

private:
    int      forDepth_      = 0;
    unsigned maxForDepth_   = 0;
    unsigned mulCount_      = 0;
    unsigned redcMulCount_  = 0;
    unsigned redcCallCount_ = 0;
    unsigned subCount_      = 0;
    unsigned cmpCount_      = 0;
    bool     modUse_        = false;
    bool     invUse_        = false;

    std::unordered_set<std::string> invNames_;
    std::unordered_set<std::string> modNames_;
    std::unordered_set<std::string> redcFuncs_;
};

// ===================== Callback =====================
class Callback : public MatchFinder::MatchCallback
{
public:
    explicit Callback(Rewriter &R) : R(R) {}

    void run(const MatchFinder::MatchResult &Res) override
    {
        const auto *FD = Res.Nodes.getNodeAs<FunctionDecl>("F");
        if (!FD || !FD->hasBody()) return;
        const auto *Body = dyn_cast<CompoundStmt>(FD->getBody());
        if (!Body) return;

        const SourceManager &SM = *Res.SourceManager;
        if (SM.isInSystemHeader(FD->getLocation())) return;
        if (!SM.isInMainFile(FD->getLocation())) return;

        // ---- 名前集合 ----
        std::unordered_set<std::string> invNames = {
            "mprime", "m0inv", "n0inv", "n_prime", "nprime", "np",
            "qinv", "minv", "ninv", "inv", "m_prime", "modinv", "u"};
        for (const std::string &s : InvNames) invNames.insert(s);

        std::unordered_set<std::string> modNames = {
            "mod", "modulus", "N", "n_mod", "p", "P", "prime", "Q", "q",
            "pmod", "M", "m"};
        for (const std::string &s : ModNames) modNames.insert(s);

        std::unordered_set<std::string> redcFuncs = {
            "montgomery_reduce", "mont_reduce", "redc", "REDC",
            "montmul", "mont_mul", "fpmul_mont", "rdc_mont", "__redc"};
        for (const std::string &s : RedcFuncNames) redcFuncs.insert(s);

        // ---- ボディスキャン ----
        MontBodyScanner scan(invNames, modNames, redcFuncs);
        scan.TraverseStmt(const_cast<CompoundStmt *>(Body));

        bool candidate = scan.isCandidate();

        // ---- パラメータ分類 ----
        static const std::unordered_set<std::string> lenNames = {
            "nwords", "n", "len", "size", "count", "words", "nw", "digits"};
        static const std::unordered_set<std::string> outNames = {
            "c", "r", "res", "result", "out", "dst", "mc", "z"};
        static const std::unordered_set<std::string> opNames = {
            "a", "b", "x", "y", "ma", "mb", "src", "src1", "src2"};

        const ParmVarDecl *opA = nullptr, *opB = nullptr;
        const ParmVarDecl *outP = nullptr, *modP = nullptr;
        const ParmVarDecl *invP = nullptr, *lenP = nullptr;

        std::vector<const ParmVarDecl *> ptrConst, ptrNonConst, ints;
        for (const ParmVarDecl *P : FD->parameters()) {
            QualType QT = P->getType().getCanonicalType();
            bool isPtr = QT->isPointerType() || QT->isArrayType();
            if (isPtr) {
                QualType pointee = QT->isPointerType()
                    ? QT->getPointeeType()
                    : cast<ArrayType>(QT.getTypePtr())->getElementType();
                bool isConst = pointee.isConstQualified();
                std::string nm = P->getNameAsString();
                if (modP == nullptr && modNames.count(nm) > 0) { modP = P; continue; }
                if (isConst) ptrConst.push_back(P);
                else         ptrNonConst.push_back(P);
            } else if (QT->isIntegerType()) {
                ints.push_back(P);
            }
        }

        // 法ポインタ: 名前で取れなければ const ポインタの中から探す（後段で）
        // 出力ポインタ: 非 const ポインタ優先、なければ名前
        for (const ParmVarDecl *P : ptrNonConst) {
            std::string nm = P->getNameAsString();
            if (!outP && (outNames.count(nm) > 0 || ptrNonConst.size() == 1))
                outP = P;
        }
        if (!outP && !ptrNonConst.empty()) outP = ptrNonConst.front();

        // 演算子 a, b: const ポインタから（法ポインタを除く）
        for (const ParmVarDecl *P : ptrConst) {
            if (P == modP) continue;
            std::string nm = P->getNameAsString();
            if (!modP && modNames.count(nm) > 0) { modP = P; continue; }
            if (!opA)      opA = P;
            else if (!opB) opB = P;
        }
        // まだ法が無ければ余った const ポインタを法とみなす
        if (!modP) {
            for (const ParmVarDecl *P : ptrConst) {
                if (P == opA || P == opB) continue;
                modP = P;
                break;
            }
        }

        // 整数引数: 逆元定数 と 語数
        for (const ParmVarDecl *P : ints) {
            std::string nm = P->getNameAsString();
            if (!invP && invNames.count(nm) > 0) { invP = P; continue; }
            if (!lenP && lenNames.count(nm) > 0) { lenP = P; continue; }
        }
        for (const ParmVarDecl *P : ints) {           // 名前で取れなかった分の補完
            std::string nm = P->getNameAsString();
            if (P == invP || P == lenP) continue;
            if (!lenP && lenNames.count(nm) == 0 && invP) lenP = P;
            else if (!invP) invP = P;
            else if (!lenP) lenP = P;
        }

        // ---- 変換種別の決定 ----
        // mul:  2 つの演算子ポインタ + 出力 + 法 が揃う
        // redc: 演算子（入出力）1 本 + 法（出力は入力と同一でも可）
        std::string mode = ModeOpt.getValue();
        bool isMul, isRedc;
        if (mode == "mul")       { isMul = true;  isRedc = false; }
        else if (mode == "redc") { isMul = false; isRedc = true;  }
        else {
            isMul  = (opA && opB && outP && modP);
            isRedc = (!isMul) && (outP || opA) && modP;
        }

        // ---- 結果出力 ----
        std::string kindStr = isMul ? "MontMul(CIOS)"
                            : isRedc ? "MontReduce(REDC)" : "Unknown";
        llvm::outs() << "[mont-auto] Function '" << FD->getNameAsString() << "': "
                     << "forDepth=" << scan.maxForDepth()
                     << ", redcMul=" << scan.redcMulCount()
                     << ", redcCall=" << scan.redcCallCount()
                     << ", mul=" << scan.mulCount()
                     << ", modUse=" << (scan.modUse() ? "1" : "0")
                     << ", condSub=" << (scan.hasCondSub() ? "1" : "0")
                     << ", kind=" << kindStr
                     << " => " << (candidate ? "CONVERT" : "SKIP") << "\n";

        if (TraceOpt && !candidate) {
            if (scan.maxForDepth() < 2)
                llvm::outs() << "  [trace] SKIP reason: need >=2 nested for loops (got "
                             << scan.maxForDepth() << ")\n";
            if (scan.redcMulCount() < MinRedcMul && scan.redcCallCount() == 0)
                llvm::outs() << "  [trace] SKIP reason: no reduction multiply by Montgomery constant\n";
            if (!scan.modUse())
                llvm::outs() << "  [trace] SKIP reason: modulus parameter not referenced\n";
        }
        if (TraceOpt && candidate) {
            llvm::outs() << "  [trace] params: "
                         << "a=" << (opA ? opA->getNameAsString() : "-")
                         << ", b=" << (opB ? opB->getNameAsString() : "-")
                         << ", c=" << (outP ? outP->getNameAsString() : "-")
                         << ", mod=" << (modP ? modP->getNameAsString() : "-")
                         << ", mprime=" << (invP ? invP->getNameAsString() : "-")
                         << ", nwords=" << (lenP ? lenP->getNameAsString() : "-")
                         << "\n";
        }

        if (!candidate || DryRun) return;

        if (isMul && !(opA && opB && outP && modP && invP)) {
            llvm::outs() << "  [warn] mul mode but parameters incomplete → SKIP rewrite\n";
            return;
        }
        if (isRedc && !((outP || opA) && modP && invP)) {
            llvm::outs() << "  [warn] redc mode but parameters incomplete → SKIP rewrite\n";
            return;
        }

        // ---- インクルード挿入 ----
        if (!IncludesInserted_) {
            FileID FID = SM.getMainFileID();
            SourceLocation FileStart = SM.getLocForStartOfFile(FID);
            if (InsertIncludes) {
                std::ostringstream ih;
                ih << "#include <climits>\n"
                   << "#include <type_traits>\n"
                   << "#include \"" << IncludeHeader.getValue() << "\"\n";
                R.InsertText(FileStart, ih.str(), true, true);
            }
            IncludesInserted_ = true;
        }

        auto nameOf = [](const ParmVarDecl *P) -> std::string {
            return P ? P->getNameAsString() : "";
        };

        std::string hlsPragmas =
            extractHLSPragmas(Body, SM, Res.Context->getLangOpts());

        // ---- 置換本体の生成 ----
        std::ostringstream oss;
        oss << "{\n";
        if (!hlsPragmas.empty() && !NoHLSDirectives)
            oss << "  " << hlsPragmas;
        if (!NoHLSDirectives)
            oss << "  #pragma HLS INLINE off\n";

        oss << "  // Auto-converted by montgomery_auto_rewriter\n"
            << "  // Original: " << kindStr << "\n";
        oss << "  constexpr unsigned MAX_NWORDS = " << MaxNwords << ";\n";

        // Digit 型を出力/演算子ポインタから推論
        const ParmVarDecl *digitSrc = outP ? outP : opA;
        oss << "  using Digit = std::remove_cv_t<std::remove_pointer_t<decltype("
            << nameOf(digitSrc) << ")>>;\n";

        std::string lenName = nameOf(lenP);
        if (!lenName.empty())
            oss << "  if (static_cast<unsigned>(" << lenName
                << ") > MAX_NWORDS) return;\n";

        if (isMul) {
            oss << "  mont::MontOps<Digit, MAX_NWORDS>::mul(\n"
                << "      " << nameOf(opA) << ", " << nameOf(opB) << ", "
                << nameOf(outP) << ", " << nameOf(modP) << ", "
                << nameOf(invP);
            if (!lenName.empty()) oss << ", " << lenName;
            oss << ");\n";
        } else { // redc
            std::string dataName = nameOf(outP ? outP : opA);
            oss << "  mont::MontOps<Digit, MAX_NWORDS>::redc(\n"
                << "      " << dataName << ", " << nameOf(modP) << ", "
                << nameOf(invP);
            if (!lenName.empty()) oss << ", " << lenName;
            oss << ");\n";
        }

        oss << "}\n";

        R.ReplaceText(Body->getSourceRange(), oss.str());
    }

private:
    Rewriter &R;
    bool IncludesInserted_ = false;
};

// ===================== Consumer / Action / main =====================
class Consumer : public ASTConsumer
{
public:
    explicit Consumer(Rewriter &R) : CB(R) {
        Finder.addMatcher(functionDecl(isDefinition()).bind("F"), &CB);
    }
    void HandleTranslationUnit(ASTContext &C) override { Finder.matchAST(C); }

private:
    MatchFinder Finder;
    Callback    CB;
};

class Action : public ASTFrontendAction
{
public:
    void EndSourceFileAction() override
    {
        if (OutputFile.getValue().empty()) {
            TheRewriter.overwriteChangedFiles();
        } else {
            std::error_code EC;
            llvm::raw_fd_ostream OS(OutputFile.getValue(), EC);
            if (EC) {
                llvm::errs() << "Error opening output file: " << EC.message() << "\n";
                return;
            }
            TheRewriter.getEditBuffer(
                TheRewriter.getSourceMgr().getMainFileID()).write(OS);
        }
    }

    std::unique_ptr<ASTConsumer>
    CreateASTConsumer(CompilerInstance &CI, StringRef) override
    {
        TheRewriter.setSourceMgr(CI.getSourceManager(), CI.getLangOpts());
        return std::make_unique<Consumer>(TheRewriter);
    }

private:
    Rewriter TheRewriter;
};

int main(int argc, const char **argv)
{
    auto Opts = CommonOptionsParser::create(argc, argv, Cat);
    if (!Opts) {
        llvm::errs() << "Options error\n";
        return 1;
    }
    ClangTool Tool(Opts->getCompilations(), Opts->getSourcePathList());
    return Tool.run(newFrontendActionFactory<Action>().get());
}
