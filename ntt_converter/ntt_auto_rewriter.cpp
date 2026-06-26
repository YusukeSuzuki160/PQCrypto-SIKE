// ntt_auto_rewriter.cpp
//  - NTT（数論変換）バタフライパターンの自動検出 → HLS最適化呼び出しへの変換
//  - 検出: Cooley-Tukey (len <<= 1) / Gentleman-Sande (len >>= 1) の両方
//  - 変換先: ntt::NTTOps<Elem, MAX_LOG2N>::forward_ntt / inverse_ntt
//
// 使い方：
//   検出のみ:
//     $ ntt_auto_rewriter --dry-run --trace your.cpp -- -std=c++17
//   変換実施:
//     $ ntt_auto_rewriter --max-log2n=8 --output=out.cpp \
//         your.cpp -- -std=c++17
//   モジュラー関数名を追加する場合:
//     $ ntt_auto_rewriter --mod-func=barrett_mul --mod-func=mont_mul \
//         --dry-run your.cpp -- -std=c++17

#include <cctype>
#include <functional>
#include <limits>
#include <memory>
#include <optional>
#include <set>
#include <sstream>
#include <string>
#include <type_traits>
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
static llvm::cl::OptionCategory Cat("ntt-auto-rewriter options");

static llvm::cl::opt<unsigned> MaxLog2N(
    "max-log2n",
    llvm::cl::desc("MAX_LOG2N value to embed (n <= 2^MAX_LOG2N)"),
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
    llvm::cl::desc("Header path for ntt_ops.hpp"),
    llvm::cl::init("ntt_ops.hpp"), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> InsertIncludes(
    "insert-includes",
    llvm::cl::desc("Insert #include <climits>, <type_traits> and lib-header"),
    llvm::cl::init(true), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> NoHLSDirectives(
    "no-hls-directives",
    llvm::cl::desc("Do not insert HLS directives in generated code"),
    llvm::cl::init(false), llvm::cl::cat(Cat));

// 強制検出タイプ: auto / forward / inverse
static llvm::cl::opt<std::string> NTTTypeOpt(
    "ntt-type",
    llvm::cl::desc("Force NTT direction: auto (default), forward (CT), inverse (GS)"),
    llvm::cl::init("auto"), llvm::cl::cat(Cat));

// バタフライ検出の最小閾値
static llvm::cl::opt<unsigned> MinButterflyCount(
    "min-butterfly",
    llvm::cl::desc("Min number of array writes in inner loop to trigger detection"),
    llvm::cl::init(2), llvm::cl::cat(Cat));

// 追加のモジュラー関数名
static llvm::cl::list<std::string> ModFuncNames(
    "mod-func",
    llvm::cl::desc("Additional modular function names (e.g., --mod-func=barrett_mul)"),
    llvm::cl::ZeroOrMore, llvm::cl::cat(Cat));

// 追加の許可関数名（内側ループ内）
static llvm::cl::list<std::string> AllowCallInner(
    "allow-call",
    llvm::cl::desc("Allowed call names inside inner loops (repeatable)"),
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

// すべてのラッパノードを剥ぐ
static const Expr *peel(const Expr *E)
{
    if (!E) return E;
    const Expr *cur = E;
    while (true) {
        const Expr *next = cur->IgnoreParenImpCasts();
        if (next != cur) { cur = next; continue; }
        if (auto *M = dyn_cast<MaterializeTemporaryExpr>(cur)) { cur = M->getSubExpr(); continue; }
        if (auto *B = dyn_cast<CXXBindTemporaryExpr>(cur))     { cur = B->getSubExpr(); continue; }
        if (auto *C = dyn_cast<CXXConstructExpr>(cur)) {
            if (C->getNumArgs() == 1)
                if (auto *AE = dyn_cast<Expr>(C->getArg(0))) { cur = AE; continue; }
        }
        if (auto *F = dyn_cast<CXXFunctionalCastExpr>(cur)) { cur = F->getSubExpr(); continue; }
        if (auto *S = dyn_cast<CStyleCastExpr>(cur))        { cur = S->getSubExpr(); continue; }
        if (auto *EC = dyn_cast<ExprWithCleanups>(cur))     { cur = EC->getSubExpr(); continue; }
        break;
    }
    return cur;
}

// ===================== NTT方向の列挙型 =====================
enum class NTTKind {
    Unknown,
    CooleyTukey,    // len <<= 1 → forward NTT（DIT）
    GentlemanSande  // len >>= 1 → inverse NTT（DIF）
};

static std::string kindName(NTTKind k) {
    switch (k) {
    case NTTKind::CooleyTukey:    return "CooleyTukey(CT,forward)";
    case NTTKind::GentlemanSande: return "GentlemanSande(GS,inverse)";
    default:                       return "Unknown";
    }
}

// ===================== NTTBodyScanner =====================
// RecursiveASTVisitor で関数本体を走査し、NTTバタフライパターンを検出する
class NTTBodyScanner : public RecursiveASTVisitor<NTTBodyScanner>
{
public:
    explicit NTTBodyScanner(std::unordered_set<std::string> modFuncs,
                             std::unordered_set<std::string> allowCalls)
        : modFuncNames_(std::move(modFuncs))
        , allowCalls_(std::move(allowCalls))
    {
        // add-like modular function names
        addFuncNames_ = {"addmod", "add_mod", "ntt_add", "modadd", "fqadd"};
        // sub-like modular function names
        subFuncNames_ = {"submod", "sub_mod", "ntt_sub", "modsub", "fqsub"};
        // mul-like modular function names
        mulFuncNames_ = {"mulmod", "mul_mod", "ntt_mul", "modmul", "fqmul",
                         "montgomery_reduce", "barrett_reduce",
                         "barrett_mul", "mont_mul", "mont_reduce"};
    }

    // ---- ForStmt: シフトループを検出 ----
    bool TraverseForStmt(ForStmt *FS)
    {
        if (!FS) return true;

        // インクリメント部分を解析
        NTTKind detectedKind = NTTKind::Unknown;
        if (const Expr *Inc = FS->getInc()) {
            detectedKind = detectShiftInc(peel(Inc));
        }
        // 初期化値から方向を補完（len = n/2 → GS, len = 1 → CT）
        if (detectedKind == NTTKind::Unknown && !hasShiftLoop_) {
            detectedKind = guessKindFromInit(FS);
        }

        if (detectedKind != NTTKind::Unknown && !hasShiftLoop_) {
            hasShiftLoop_ = true;
            nttKind_      = detectedKind;
            if (TraceOpt)
                llvm::outs() << "  [trace] shift loop found: " << kindName(detectedKind) << "\n";
        }

        ++forDepth_;
        bool r = RecursiveASTVisitor::TraverseForStmt(FS);
        --forDepth_;
        return r;
    }

    // ---- BinaryOperator: add/sub/mul/mod/配列書き込みをカウント ----
    bool VisitBinaryOperator(BinaryOperator *BO)
    {
        if (forDepth_ <= 0) return true;

        switch (BO->getOpcode()) {
        case BO_Add: case BO_AddAssign: ++innerAddCount_; break;
        case BO_Sub: case BO_SubAssign: ++innerSubCount_; break;
        case BO_Mul: case BO_MulAssign: ++innerMulCount_; break;
        case BO_Rem: case BO_RemAssign: ++innerModCount_; break;
        default: break;
        }

        // 配列書き込み a[...] = ... を検出
        if (BO->isAssignmentOp()) {
            const Expr *LHS = peel(BO->getLHS());
            if (isa<ArraySubscriptExpr>(LHS)) {
                ++innerArrayWriteCount_;
                // バタフライペア（同一配列への2回書き込み）を検出
                recordArrayWrite(dyn_cast<ArraySubscriptExpr>(LHS));
            }
        }
        return true;
    }

    // CXX演算子オーバーロード（ap_uint等）も対応
    bool VisitCXXOperatorCallExpr(CXXOperatorCallExpr *CE)
    {
        if (forDepth_ <= 0) return true;
        OverloadedOperatorKind Op = CE->getOperator();
        if (Op == OO_Plus || Op == OO_PlusEqual)   ++innerAddCount_;
        if (Op == OO_Minus || Op == OO_MinusEqual) ++innerSubCount_;
        if (Op == OO_Star || Op == OO_StarEqual)   ++innerMulCount_;
        if (Op == OO_Percent)                       ++innerModCount_;
        // 配列添字演算子への代入
        if (Op == OO_Subscript && CE->getNumArgs() > 0) {
            // CXXOperatorCallExpr の代入はカウントしない（BinaryOperator側で対応）
        }
        return true;
    }

    // ---- CallExpr: モジュラー関数呼び出しをカウント ----
    bool VisitCallExpr(CallExpr *CE)
    {
        if (forDepth_ <= 0) return true;
        if (const FunctionDecl *FD = CE->getDirectCallee()) {
            std::string name = FD->getNameAsString();
            // add-like 関数: addmod / add_mod / ntt_add / fqadd ...
            if (addFuncNames_.count(name) > 0) {
                ++innerAddCount_;
                ++modFuncCallCount_;
            }
            // sub-like 関数: submod / sub_mod / ntt_sub / fqsub ...
            else if (subFuncNames_.count(name) > 0) {
                ++innerSubCount_;
                ++modFuncCallCount_;
            }
            // mul-like 関数: mulmod / fqmul / mont_mul ...（modularかつ乗算）
            else if (mulFuncNames_.count(name) > 0) {
                ++innerMulCount_;
                ++modFuncCallCount_;
            }
            // その他の一般モジュラー関数
            else if (modFuncNames_.count(name) > 0) {
                ++modFuncCallCount_;
            }
        }
        return true;
    }

    // ---- 結果アクセサ ----
    bool isCandidate() const
    {
        return hasShiftLoop_ &&
               innerAddCount_ >= 1 &&
               innerSubCount_ >= 1 &&
               innerArrayWriteCount_ >= MinButterflyCount;
    }

    NTTKind    kind()            const { return nttKind_; }
    bool       hasShiftLoop()    const { return hasShiftLoop_; }
    bool       hasModular()      const { return innerModCount_ > 0 || modFuncCallCount_ > 0; }
    bool       hasTwiddle()      const { return innerMulCount_ > 0; }
    unsigned   addCount()        const { return innerAddCount_; }
    unsigned   subCount()        const { return innerSubCount_; }
    unsigned   mulCount()        const { return innerMulCount_; }
    unsigned   modCount()        const { return innerModCount_; }
    unsigned   modFuncCount()    const { return modFuncCallCount_; }
    unsigned   arrayWriteCount() const { return innerArrayWriteCount_; }
    bool       hasButterflyPair() const { return butterflyPairCount_ >= 1; }

private:
    // ---- シフトインクリメントの検出 ----
    NTTKind detectShiftInc(const Expr *E)
    {
        if (!E) return NTTKind::Unknown;
        // len <<= 1 / len >>= 1
        if (const auto *CAO = dyn_cast<CompoundAssignOperator>(E)) {
            if (CAO->getOpcode() == BO_ShlAssign) return NTTKind::CooleyTukey;
            if (CAO->getOpcode() == BO_ShrAssign) return NTTKind::GentlemanSande;
        }
        // len = len << 1 / len = len >> 1
        if (const auto *BO = dyn_cast<BinaryOperator>(E)) {
            if (BO->getOpcode() == BO_Assign) {
                const Expr *RHS = peel(BO->getRHS());
                if (const auto *RBO = dyn_cast<BinaryOperator>(RHS)) {
                    if (RBO->getOpcode() == BO_Shl) return NTTKind::CooleyTukey;
                    if (RBO->getOpcode() == BO_Shr) return NTTKind::GentlemanSande;
                }
                // len = len * 2 or len = len / 2
                if (const auto *RBO = dyn_cast<BinaryOperator>(RHS)) {
                    if (RBO->getOpcode() == BO_Mul) return NTTKind::CooleyTukey;
                    if (RBO->getOpcode() == BO_Div) return NTTKind::GentlemanSande;
                }
            }
        }
        return NTTKind::Unknown;
    }

    // ---- 初期値からNTT方向を推測 ----
    // CT: len = 1 から始まる → CooleyTukey
    // GS: len = n/2 から始まる → GentlemanSande
    NTTKind guessKindFromInit(const ForStmt *FS)
    {
        const Stmt *Init = FS->getInit();
        if (!Init) return NTTKind::Unknown;

        auto extractInitVal = [&]() -> std::optional<long long> {
            if (const auto *DS = dyn_cast<DeclStmt>(Init)) {
                if (DS->isSingleDecl()) {
                    if (const auto *VD = dyn_cast<VarDecl>(DS->getSingleDecl())) {
                        if (const Expr *InitE = VD->getInit()) {
                            const Expr *E = peel(InitE);
                            if (const auto *IL = dyn_cast<IntegerLiteral>(E))
                                return (long long)IL->getValue().getSExtValue();
                        }
                    }
                }
            }
            return std::nullopt;
        };

        auto val = extractInitVal();
        if (val.has_value()) {
            if (*val == 1)   return NTTKind::CooleyTukey;
            if (*val >= 2)   return NTTKind::GentlemanSande; // n/2, 128, etc.
        }
        return NTTKind::Unknown;
    }

    // ---- 配列書き込みの記録（バタフライペア検出用） ----
    void recordArrayWrite(const ArraySubscriptExpr *ASE)
    {
        if (!ASE) return;
        // 同一配列への2つ目の書き込みをバタフライペアとみなす
        const Expr *Base = peel(ASE->getBase());
        std::string baseName;
        if (const auto *DRE = dyn_cast<DeclRefExpr>(Base))
            baseName = DRE->getNameInfo().getAsString();
        else
            return;

        if (lastWriteBase_ == baseName) {
            ++butterflyPairCount_;
        }
        lastWriteBase_ = baseName;
    }

    // ---- フィールド ----
    int         forDepth_          = 0;
    bool        hasShiftLoop_      = false;
    NTTKind     nttKind_           = NTTKind::Unknown;

    unsigned    innerAddCount_        = 0;
    unsigned    innerSubCount_        = 0;
    unsigned    innerMulCount_        = 0;
    unsigned    innerModCount_        = 0;
    unsigned    innerArrayWriteCount_ = 0;
    unsigned    modFuncCallCount_     = 0;
    unsigned    butterflyPairCount_   = 0;

    std::string lastWriteBase_;

    std::unordered_set<std::string> modFuncNames_;
    std::unordered_set<std::string> addFuncNames_;
    std::unordered_set<std::string> subFuncNames_;
    std::unordered_set<std::string> mulFuncNames_;
    std::unordered_set<std::string> allowCalls_;
};

// ===================== コード生成 =====================

// NTT呼び出しコードを生成する
static void generateNTTCall(std::ostringstream &oss,
                             const std::string &aName,
                             const std::string &nName,
                             const std::string &rootsName,
                             const std::string &modName,
                             NTTKind kind,
                             unsigned maxLog2n,
                             bool hasRoots,
                             bool hasMod,
                             bool noHLS)
{
    // 方向の決定
    std::string nttTypeStr = NTTTypeOpt.getValue();
    bool forwardNTT;
    if (nttTypeStr == "forward") {
        forwardNTT = true;
    } else if (nttTypeStr == "inverse") {
        forwardNTT = false;
    } else {
        // auto: CT → forward, GS → inverse, Unknown → forward
        forwardNTT = (kind != NTTKind::GentlemanSande);
    }

    std::string funcName = forwardNTT ? "forward_ntt" : "inverse_ntt";

    if (!noHLS) {
        oss << "  #pragma HLS INLINE off\n";
    }

    oss << "  constexpr unsigned MAX_LOG2N = " << maxLog2n << ";\n";
    oss << "  using Elem = std::remove_cv_t<std::remove_pointer_t<decltype("
        << aName << ")>>;\n";

    if (!nName.empty()) {
        oss << "  if (static_cast<unsigned>(" << nName
            << ") > (1u << MAX_LOG2N)) return;\n";
    }

    oss << "  ntt::NTTOps<Elem, MAX_LOG2N>::" << funcName << "(\n"
        << "      " << aName;
    if (!nName.empty())    oss << ", " << nName;
    if (hasRoots)          oss << ", " << rootsName;
    if (hasMod)            oss << ", " << modName;
    oss << ");\n";
}

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

        // ソースファイルのみ処理（システムヘッダ等を除く）
        const SourceManager &SM = *Res.SourceManager;
        if (SM.isInSystemHeader(FD->getLocation())) return;
        if (!SM.isInMainFile(FD->getLocation())) return;

        // ---- パラメータ検出 ----
        // NTTの典型的なシグネチャ:
        //   void ntt(T* a, int n, T mod, const T* roots)
        //   void ntt(T* a, int n)
        //   void ntt(int16_t r[256])           ← KYBER スタイル
        const ParmVarDecl *arrayParam = nullptr;  // 変換対象配列
        const ParmVarDecl *lengthParam = nullptr; // 配列長
        const ParmVarDecl *modParam    = nullptr; // 剰余
        const ParmVarDecl *rootsParam  = nullptr; // 回転子（twiddle）

        // 既知の名前で分類
        static const std::unordered_set<std::string> lenNames = {
            "n", "len", "size", "count", "N", "log2n", "logn"};
        static const std::unordered_set<std::string> modNames = {
            "mod", "q", "Q", "p", "P", "prime", "modulus", "MOD"};
        static const std::unordered_set<std::string> rootNames = {
            "roots", "zetas", "omega", "twiddle", "w", "psi",
            "omegas", "twiddles", "rootsOfUnity"};

        std::vector<const ParmVarDecl *> ptrParams, intParams;
        for (const ParmVarDecl *P : FD->parameters()) {
            QualType QT = P->getType().getCanonicalType();
            bool isPtr   = QT->isPointerType() || QT->isArrayType();
            bool isInt   = QT->isIntegerType();
            if (isPtr) ptrParams.push_back(P);
            if (isInt) intParams.push_back(P);
        }

        // 名前ベースで特定を試みる
        for (const ParmVarDecl *P : FD->parameters()) {
            std::string name = P->getNameAsString();
            QualType QT = P->getType().getCanonicalType();
            bool isPtr = QT->isPointerType() || QT->isArrayType();
            bool isInt = QT->isIntegerType();

            if (isPtr && rootNames.count(name) > 0 && !rootsParam)
                rootsParam = P;
            else if (isPtr && !arrayParam)
                arrayParam = P;
            if (isInt && modNames.count(name) > 0 && !modParam)
                modParam = P;
            else if (isInt && lenNames.count(name) > 0 && !lengthParam)
                lengthParam = P;
            else if (isInt && !lengthParam)
                lengthParam = P;
        }

        // 最低限: 変換対象配列パラメータが必要
        if (!arrayParam && !ptrParams.empty())
            arrayParam = ptrParams[0];

        if (!arrayParam) {
            if (TraceOpt)
                llvm::outs() << "[ntt-auto] '" << FD->getNameAsString()
                             << "': no pointer param → SKIP\n";
            return;
        }

        // ---- モジュラー関数名の収集 ----
        std::unordered_set<std::string> modFuncs = {
            "mulmod", "addmod", "submod", "mul_mod", "add_mod", "sub_mod",
            "barrett_reduce", "barrett_mul", "mont_mul", "mont_reduce",
            "ntt_mul", "ntt_add", "ntt_sub", "modmul", "modadd", "modsub",
            "reduce32", "reduce64", "fqmul", "fqadd"
        };
        for (const std::string &s : ModFuncNames)
            modFuncs.insert(s);

        // ---- 許可呼び出し名の収集 ----
        std::unordered_set<std::string> allowCalls;
        for (const std::string &s : AllowCallInner)
            allowCalls.insert(s);
        allowCalls.insert(modFuncs.begin(), modFuncs.end());

        // ---- ボディスキャン ----
        NTTBodyScanner scan(modFuncs, allowCalls);
        scan.TraverseStmt(const_cast<CompoundStmt *>(Body));

        bool candidate = scan.isCandidate();

        // 方向の強制上書き
        NTTKind kind = scan.kind();
        if (NTTTypeOpt.getValue() == "forward")  kind = NTTKind::CooleyTukey;
        if (NTTTypeOpt.getValue() == "inverse")  kind = NTTKind::GentlemanSande;

        // ---- 結果の出力 ----
        llvm::outs() << "[ntt-auto] Function '" << FD->getNameAsString() << "': "
                     << "shift_loop=" << (scan.hasShiftLoop() ? "1" : "0")
                     << ", kind=" << kindName(kind)
                     << ", add=" << scan.addCount()
                     << ", sub=" << scan.subCount()
                     << ", mul=" << scan.mulCount()
                     << ", mod=" << (scan.modCount() + scan.modFuncCount())
                     << ", arrayWrites=" << scan.arrayWriteCount()
                     << ", twiddle=" << (scan.hasTwiddle() ? "1" : "0")
                     << ", modular=" << (scan.hasModular() ? "1" : "0")
                     << " => " << (candidate ? "CONVERT" : "SKIP") << "\n";

        if (TraceOpt && !candidate) {
            if (!scan.hasShiftLoop())
                llvm::outs() << "  [trace] SKIP reason: no shift loop (<<= or >>=)\n";
            if (scan.addCount() == 0)
                llvm::outs() << "  [trace] SKIP reason: no addition in inner loops\n";
            if (scan.subCount() == 0)
                llvm::outs() << "  [trace] SKIP reason: no subtraction in inner loops\n";
            if (scan.arrayWriteCount() < MinButterflyCount)
                llvm::outs() << "  [trace] SKIP reason: too few array writes ("
                             << scan.arrayWriteCount() << " < " << MinButterflyCount << ")\n";
        }

        if (!candidate || DryRun) return;

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

        // ---- パラメータ名の取得 ----
        auto nameOf = [](const ParmVarDecl *P) -> std::string {
            return P ? P->getNameAsString() : "";
        };

        std::string aName     = nameOf(arrayParam);
        std::string nName     = nameOf(lengthParam);
        std::string rootsName = nameOf(rootsParam);
        std::string modName   = nameOf(modParam);

        bool hasRoots = !rootsName.empty();
        bool hasMod   = !modName.empty();

        // ---- 既存の HLS プラグマを保持 ----
        std::string hlsPragmas = extractHLSPragmas(Body, SM, Res.Context->getLangOpts());

        // ---- 置換本体の生成 ----
        std::ostringstream oss;
        oss << "{\n";
        if (!hlsPragmas.empty() && !NoHLSDirectives)
            oss << "  " << hlsPragmas;

        oss << "  // Auto-converted by ntt_auto_rewriter\n"
            << "  // Original: " << kindName(kind) << "\n";

        generateNTTCall(oss, aName, nName, rootsName, modName,
                        kind, MaxLog2N, hasRoots, hasMod, NoHLSDirectives);

        oss << "}\n";

        R.ReplaceText(Body->getSourceRange(), oss.str());
    }

private:
    Rewriter &R;
    bool IncludesInserted_ = false;
};

// ===================== AST Consumer / Action / main =====================

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
