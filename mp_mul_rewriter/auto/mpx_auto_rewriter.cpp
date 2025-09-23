// mpx_auto_rewriter_v4_2.cpp
//  - 多倍長“学校式/Comba”検出 → pack×mul×unpack への自動置換
//  - 誤検出抑止: インデックス形／演算子制約／型制約
//  - 追加: idx_in/idx_out の添字ヘルパ関数を理解（mp_mul_orig のような実装も検出）
//  - 追加: 内側ループの許可呼び出しに idx_in/idx_out をデフォルトで含める
//
// 使い方：
//   検出のみ:
//     $ mpx_auto_rewriter_v4_2 --dry-run --trace --mul-macro=MUL \
//         your.cpp -- -std=c++17 -DUSE_AP_INT -I<vivado>/include
//   置換実施（MSW-first を強制する例）:
//     $ mpx_auto_rewriter_v4_2 --max-nwords=8 --force-msw-first --mul-macro=MUL \
//         your.cpp -- -std=c++17 -DUSE_AP_INT -I<vivado>/include

#include <sstream>
#include <string>
#include <vector>
#include <set>
#include <unordered_set>
#include <optional>
#include <functional>
#include <cctype>
#include <limits>
#include <memory>
#include <cstdlib>
#include <type_traits>

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
static llvm::cl::OptionCategory Cat("mpx-auto-rewriter options (v4.2)");

// 生成系
static llvm::cl::opt<unsigned> MaxNWords(
    "max-nwords", llvm::cl::desc("MAX_NWORDS value to embed"),
    llvm::cl::init(8), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> ForceLSW(
    "force-lsw-first", llvm::cl::desc("Force LSW-first (override detector)"),
    llvm::cl::init(false), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> ForceMSW(
    "force-msw-first", llvm::cl::desc("Force MSW-first (override detector)"),
    llvm::cl::init(false), llvm::cl::cat(Cat));

// 新規: 学校式演算のビット数指定
static llvm::cl::opt<unsigned> MulBits(
    "mul-bits", llvm::cl::desc("Bit width for schoolbook multiplication (e.g., 32, 64)"),
    llvm::cl::init(0), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> UseSchoolbook(
    "use-schoolbook", llvm::cl::desc("Use schoolbook multiplication instead of PackedOps"),
    llvm::cl::init(false), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> FallbackMode(
    "fallback-mode", llvm::cl::desc("Enable fallback to smaller bit operations when resources are insufficient"),
    llvm::cl::init(false), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> NoHLSDirectives(
  "no-hls-directives", llvm::cl::desc("Do not insert HLS directives in generated code"),
  llvm::cl::init(false), llvm::cl::cat(Cat));

static llvm::cl::opt<std::string> OutputFile(
  "output", llvm::cl::desc("Output file name (if not specified, overwrites input file)"),
  llvm::cl::init(""), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> DryRun(
    "dry-run", llvm::cl::desc("Detect only; do not rewrite"),
    llvm::cl::init(false), llvm::cl::cat(Cat));

static llvm::cl::opt<std::string> IncludeHeader(
    "lib-header", llvm::cl::desc("Header path for mpx_packed.hpp"),
    llvm::cl::init("mpx_packed.hpp"), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> InsertIncludes(
    "insert-includes",
    llvm::cl::desc("Insert #include <ap_int.h>, <climits>, <type_traits> and lib-header"),
    llvm::cl::init(true), llvm::cl::cat(Cat));

// 検出系（既存）
static llvm::cl::opt<unsigned> MulHitThreshold(
    "mul-threshold",
    llvm::cl::desc("Min # of multiplications to consider as MP-mul"),
    llvm::cl::init(1), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> TraceOpt(
    "trace", llvm::cl::desc("Trace detected multiplications and reasons"),
    llvm::cl::init(false), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> LooseOpt(
    "loose", llvm::cl::desc("Count mul if EITHER side is from a/b (not both)"),
    llvm::cl::init(false), llvm::cl::cat(Cat));

static llvm::cl::list<std::string> MulMacros(
    "mul-macro", llvm::cl::desc("Macro names to count as multiplication (e.g., -mul-macro=MUL)"),
    llvm::cl::ZeroOrMore, llvm::cl::cat(Cat));

// === 新規: 誤検出抑止のための制約 ===

// 型制約
static llvm::cl::opt<bool> UnsignedOnly(
    "unsigned-only",
    llvm::cl::desc("Require that element types of a,b,c are unsigned integer or ap_uint<...>"),
    llvm::cl::init(true), llvm::cl::cat(Cat));

// 演算子制約（内側ループ中）
static llvm::cl::opt<bool> ForbidInnerCalls(
    "forbid-inner-calls",
    llvm::cl::desc("Forbid function calls inside inner (nested) loops (allowlist via --allow-call-inner)"),
    llvm::cl::init(true), llvm::cl::cat(Cat));

static llvm::cl::list<std::string> AllowCallInner(
    "allow-call-inner",
    llvm::cl::desc("Allowed call names inside inner loops (repeatable)"),
    llvm::cl::ZeroOrMore, llvm::cl::cat(Cat));

static llvm::cl::opt<bool> BanMod(
    "ban-mod",
    llvm::cl::desc("Ban '%' in inner loops"),
    llvm::cl::init(true), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> BanShift(
    "ban-shift",
    llvm::cl::desc("Ban '<<' and '>>' in inner loops"),
    llvm::cl::init(true), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> BanBitwise(
    "ban-bitwise",
    llvm::cl::desc("Ban '&', '|', '^' in inner loops"),
    llvm::cl::init(true), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> BanDiv(
    "ban-div",
    llvm::cl::desc("Ban '/' in inner loops"),
    llvm::cl::init(true), llvm::cl::cat(Cat));

// インデックス形制約
static llvm::cl::opt<bool> RequireIndexShape(
    "require-index-shape",
    llvm::cl::desc("Require that c[...] indices match (i), (i+j), (n-1-i), (n-1-(i+j)), (2n-1-i) or final-word (n-1/2n-1) (+const)"),
    llvm::cl::init(true), llvm::cl::cat(Cat));

static llvm::cl::opt<double> MinIndexOkRatioOpt(
    "min-index-ok-ratio",
    llvm::cl::desc("Minimum ratio of c[...] writes whose index matches allowed shapes (0..1)"),
    llvm::cl::init(0.5), llvm::cl::cat(Cat));

// 新規: マクロ展開由来の禁止演算／呼び出しは無視
static llvm::cl::opt<bool> IgnoreOpsInMacros(
    "ignore-ops-in-macros",
    llvm::cl::desc("Do not count forbidden ops inside macro expansions"),
    llvm::cl::init(true), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> IgnoreCallsInMacros(
    "ignore-calls-in-macros",
    llvm::cl::desc("Do not count inner calls inside macro expansions"),
    llvm::cl::init(true), llvm::cl::cat(Cat));

// 値のクランプを main で反映（コールバック側から参照）
static double g_MinIdxRatio = 0.5;
static inline double getMinIdxRatio() { return g_MinIdxRatio; }

// =======================================================

static std::string getSourceText(const Stmt *S, const SourceManager &SM, const LangOptions &LO)
{
  if (!S)
    return {};
  SourceLocation b = S->getBeginLoc();
  SourceLocation e = Lexer::getLocForEndOfToken(S->getEndLoc(), 0, SM, LO);
  if (b.isInvalid() || e.isInvalid())
    return {};
  return std::string(SM.getCharacterData(b), SM.getCharacterData(e) - SM.getCharacterData(b));
}

// --- crude comment/string stripper (for macro name search) ---
static std::string stripCommentsAndStrings(const std::string &in)
{
  std::string out;
  out.reserve(in.size());
  enum State
  {
    CODE,
    SLASH,
    LINE_CMT,
    BLOCK_CMT,
    SQUOTE,
    DQUOTE,
    ESC_S,
    ESC_D
  } st = CODE;
  for (char c : in)
  {
    switch (st)
    {
    case CODE:
      if (c == '/')
      {
        st = SLASH;
        out.push_back(' ');
      }
      else if (c == '\'')
      {
        st = SQUOTE;
        out.push_back(' ');
      }
      else if (c == '"')
      {
        st = DQUOTE;
        out.push_back(' ');
      }
      else
        out.push_back(c);
      break;
    case SLASH:
      if (c == '/')
      {
        st = LINE_CMT;
        out.back() = ' ';
      }
      else if (c == '*')
      {
        st = BLOCK_CMT;
        out.back() = ' ';
      }
      else
      {
        st = CODE;
        out.push_back(c);
      }
      break;
    case LINE_CMT:
      if (c == '\n')
      {
        st = CODE;
        out.push_back('\n');
      }
      else
        out.push_back(' ');
      break;
    case BLOCK_CMT:
      if (c == '*')
        st = SLASH; // temp reuse
      out.push_back(' ');
      break;
    case SQUOTE:
      if (c == '\\')
        st = ESC_S;
      else if (c == '\'')
        st = CODE;
      out.push_back(' ');
      break;
    case DQUOTE:
      if (c == '\\')
        st = ESC_D;
      else if (c == '"')
        st = CODE;
      out.push_back(' ');
      break;
    case ESC_S:
      st = SQUOTE;
      out.push_back(' ');
      break;
    case ESC_D:
      st = DQUOTE;
      out.push_back(' ');
      break;
    }
  }
  return out;
}

static unsigned countMacroHitsInBody(const CompoundStmt *Body,
                                     const SourceManager &SM,
                                     const LangOptions &LO,
                                     const std::vector<std::string> &names)
{
  if (names.empty())
    return 0;
  std::string txt = getSourceText(Body, SM, LO);
  txt = stripCommentsAndStrings(txt);
  unsigned hits = 0;
  for (const auto &name : names)
  {
    if (name.empty())
      continue;
    for (size_t pos = 0;;)
    {
      pos = txt.find(name, pos);
      if (pos == std::string::npos)
        break;
      char prev = (pos > 0 ? txt[pos - 1] : ' ');
      bool okid = !(std::isalnum((unsigned char)prev) || prev == '_');
      size_t p = pos + name.size();
      while (p < txt.size() && std::isspace((unsigned char)txt[p]))
        ++p;
      if (okid && p < txt.size() && txt[p] == '(')
        ++hits;
      pos += name.size();
    }
  }
  return hits;
}

static std::string extractHLSPragmas(const CompoundStmt *Body,
                                     const SourceManager &SM, const LangOptions &LO)
{
  std::string txt = getSourceText(Body, SM, LO);
  std::stringstream in(txt);
  std::string line, out;
  while (std::getline(in, line))
  {
    std::string s = line;
    auto p = s.find_first_not_of(" \t");
    if (p != std::string::npos)
      s = s.substr(p);
    if (s.rfind("#pragma HLS", 0) == 0)
      out += line + "\n";
  }
  return out;
}

// peel all wrapper nodes to reach the core expr
static const Expr *peel(const Expr *E)
{
  if (!E)
    return E;
  const Expr *cur = E;
  while (true)
  {
    const Expr *next = cur->IgnoreParenImpCasts();
    if (next != cur)
    {
      cur = next;
      continue;
    }
    if (auto *M = dyn_cast<MaterializeTemporaryExpr>(cur))
    {
      cur = M->getSubExpr();
      continue;
    }
    if (auto *B = dyn_cast<CXXBindTemporaryExpr>(cur))
    {
      cur = B->getSubExpr();
      continue;
    }
    if (auto *C = dyn_cast<CXXConstructExpr>(cur))
    {
      if (C->getNumArgs() == 1)
      {
        if (auto *AE = dyn_cast<Expr>(C->getArg(0)))
        {
          cur = AE;
          continue;
        }
      }
    }
    if (auto *F = dyn_cast<CXXFunctionalCastExpr>(cur))
    {
      cur = F->getSubExpr();
      continue;
    }
    if (auto *S = dyn_cast<CStyleCastExpr>(cur))
    {
      cur = S->getSubExpr();
      continue;
    }
    if (auto *EC = dyn_cast<ExprWithCleanups>(cur))
    {
      cur = EC->getSubExpr();
      continue;
    }
    break;
  }
  return cur;
}

// ============ ループ変数の推定（for の i/j を取る） ============
static const VarDecl *guessLoopVar(const ForStmt *FS)
{
  if (!FS)
    return nullptr;
  if (const Stmt *Init = FS->getInit())
  {
    if (const auto *DS = dyn_cast<DeclStmt>(Init))
    {
      if (DS->isSingleDecl())
        if (const auto *VD = dyn_cast<VarDecl>(DS->getSingleDecl()))
          return VD;
    }
    if (const auto *BO = dyn_cast<BinaryOperator>(Init))
    {
      const Expr *L = peel(BO->getLHS());
      if (const auto *DRE = dyn_cast<DeclRefExpr>(L))
        if (const auto *VD = dyn_cast<VarDecl>(DRE->getDecl()))
          return VD;
    }
  }
  if (const Expr *Inc = FS->getInc())
  {
    const Expr *E = peel(Inc);
    if (const auto *UO = dyn_cast<UnaryOperator>(E))
    {
      if (UO->isIncrementDecrementOp())
      {
        const Expr *S = peel(UO->getSubExpr());
        if (const auto *DRE = dyn_cast<DeclRefExpr>(S))
          if (const auto *VD = dyn_cast<VarDecl>(DRE->getDecl()))
            return VD;
      }
    }
    if (const auto *BO = dyn_cast<BinaryOperator>(E))
    {
      if (BO->isAssignmentOp())
      {
        const Expr *L = peel(BO->getLHS());
        if (const auto *DRE = dyn_cast<DeclRefExpr>(L))
          if (const auto *VD = dyn_cast<VarDecl>(DRE->getDecl()))
            return VD;
      }
    }
  }
  if (const Expr *Cond = FS->getCond())
  {
    const Expr *C = peel(Cond);
    if (const auto *BO = dyn_cast<BinaryOperator>(C))
    {
      const Expr *L = peel(BO->getLHS());
      if (const auto *DRE = dyn_cast<DeclRefExpr>(L))
        if (const auto *VD = dyn_cast<VarDecl>(DRE->getDecl()))
          return VD;
    }
    else if (const auto *DRE = dyn_cast<DeclRefExpr>(C))
    {
      if (const auto *VD = dyn_cast<VarDecl>(DRE->getDecl()))
        return VD;
    }
  }
  return nullptr;
}

// ============ LHS 添字の線形形判定 ============
// idx を a*i + b*j + c*n + d の形（+/- のみ & 定数倍）に分解して、
// 許可パターンに一致するかを判定する。
struct LinForm
{
  long long ci = 0; // i の係数
  long long cj = 0; // j の係数
  long long cn = 0; // nwords の係数
  long long c0 = 0; // 定数項
  bool ok = true;
};
static bool foldInt64(const llvm::APInt &api, long long &out)
{
  if (api.getBitWidth() > 63)
    return false;
  out = (long long)api.getSExtValue();
  return true;
}
static bool buildLinFormRec(const Expr *E,
                            const VarDecl *I, const VarDecl *J, const ParmVarDecl *N,
                            long long sgn, LinForm &L)
{
  if (!E)
  {
    L.ok = false;
    return false;
  }
  E = peel(E);

  if (const auto *IL = dyn_cast<IntegerLiteral>(E))
  {
    long long v = 0;
    if (!foldInt64(IL->getValue(), v))
    {
      L.ok = false;
      return false;
    }
    L.c0 += sgn * v;
    return true;
  }
  if (const auto *DRE = dyn_cast<DeclRefExpr>(E))
  {
    const ValueDecl *VD = DRE->getDecl();
    if (VD == I)
    {
      L.ci += sgn;
      return true;
    }
    if (VD == J)
    {
      L.cj += sgn;
      return true;
    }
    if (VD == N)
    {
      L.cn += sgn;
      return true;
    }
    L.ok = false;
    return false;
  }
  if (const auto *UO = dyn_cast<UnaryOperator>(E))
  {
    if (UO->getOpcode() == UO_Minus)
      return buildLinFormRec(UO->getSubExpr(), I, J, N, -sgn, L);
    if (UO->getOpcode() == UO_Plus)
      return buildLinFormRec(UO->getSubExpr(), I, J, N, +sgn, L);
  }
  if (const auto *BO = dyn_cast<BinaryOperator>(E))
  {
    switch (BO->getOpcode())
    {
    case BO_Add:
      return buildLinFormRec(BO->getLHS(), I, J, N, sgn, L) &&
             buildLinFormRec(BO->getRHS(), I, J, N, sgn, L);
    case BO_Sub:
      return buildLinFormRec(BO->getLHS(), I, J, N, sgn, L) &&
             buildLinFormRec(BO->getRHS(), I, J, N, -sgn, L);
    case BO_Mul:
    {
      // (const) * (var) 形式のみ許容（逆順も可）
      const Expr *Lhs = peel(BO->getLHS());
      const Expr *Rhs = peel(BO->getRHS());
      const IntegerLiteral *K = dyn_cast<IntegerLiteral>(Lhs);
      const DeclRefExpr *V = dyn_cast<DeclRefExpr>(Rhs);
      if (!K || !V)
      {
        K = dyn_cast<IntegerLiteral>(Rhs);
        V = dyn_cast<DeclRefExpr>(Lhs);
      }
      if (!K || !V)
      {
        L.ok = false;
        return false;
      }
      long long k = 0;
      if (!foldInt64(K->getValue(), k))
      {
        L.ok = false;
        return false;
      }
      const ValueDecl *VD = V->getDecl();
      if (VD == I)
        L.ci += sgn * k;
      else if (VD == J)
        L.cj += sgn * k;
      else if (VD == N)
        L.cn += sgn * k;
      else
      {
        L.ok = false;
        return false;
      }
      return true;
    }
    default:
      break;
    }
  }
  // CXXOperatorCallExpr の '+' '-' も（念のため）
  if (const auto *CE = dyn_cast<CXXOperatorCallExpr>(E))
  {
    OverloadedOperatorKind Op = CE->getOperator();
    if ((Op == OO_Plus || Op == OO_Minus) && CE->getNumArgs() >= 2)
    {
      long long sgnR = (Op == OO_Plus ? sgn : -sgn);
      return buildLinFormRec(CE->getArg(0), I, J, N, sgn, L) &&
             buildLinFormRec(CE->getArg(1), I, J, N, sgnR, L);
    }
  }
  L.ok = false;
  return false;
}

// ヘルパ: 直接呼び出し名の取得（CallExpr→関数名）
static bool getDirectCallName(const Expr *E, std::string &outName)
{
  E = peel(E);
  if (const auto *CE = dyn_cast<CallExpr>(E))
  {
    if (const FunctionDecl *FD = CE->getDirectCallee())
    {
      outName = FD->getNameAsString();
      return true;
    }
  }
  return false;
}

// ヘルパ: Arg が nwords または 2*nwords か？
static bool isN_or_2N(const Expr *Arg, const VarDecl *I, const VarDecl *J, const ParmVarDecl *N)
{
  LinForm L;
  if (!buildLinFormRec(Arg, I, J, N, +1, L) || !L.ok)
    return false;
  return (L.ci == 0 && L.cj == 0 && L.c0 == 0 && (L.cn == 1 || L.cn == 2));
}

static bool indexMatchesAllowedShapesCore(const Expr *Eidx,
                                          const VarDecl *I, const VarDecl *J,
                                          const ParmVarDecl *N)
{
  LinForm L;
  if (!buildLinFormRec(Eidx, I, J, N, +1, L) || !L.ok)
    return false;

  // 1) 低位: i or i+j (+小定数)
  if (L.cn == 0)
  {
    if (L.ci == 1 && (L.cj == 0 || L.cj == 1))
      return true;
    if (std::llabs(L.c0) <= 4 && L.ci == 1 && (L.cj == 0 || L.cj == 1))
      return true;
  }

  // 2) MSW 系:
  //   2-1) 典型: n-1-i, n-1-(i+j), 2n-1-i (+小定数)
  if ((L.cn == 1 || L.cn == 2))
  {
    if ((L.ci == -1) && (L.cj == 0 || L.cj == -1) && std::llabs(L.c0 + 1) <= 4)
      return true;
    //   2-2) 最終語の定数: n-1, 2n-1 （ci=cj=0, c0≈-1）
    if (L.ci == 0 && L.cj == 0 && std::llabs(L.c0 + 1) <= 4)
      return true;
  }
  return false;
}

// idx_in/idx_out を理解する index matcher
static bool indexMatchesAllowedShapes(const Expr *Idx,
                                      const VarDecl *I, const VarDecl *J,
                                      const ParmVarDecl *N)
{
  if (!Idx)
    return false;
  Idx = peel(Idx);

  // 直接解析（非関数呼び出し）
  if (!isa<CallExpr>(Idx))
  {
    return indexMatchesAllowedShapesCore(Idx, I, J, N);
  }

  // 呼び出し名の確認
  std::string name;
  if (!getDirectCallName(Idx, name))
    return false;
  if (name != "idx_in" && name != "idx_out")
  {
    // 他の関数は対象外
    return false;
  }

  const auto *CE = cast<CallExpr>(Idx);
  if (CE->getNumArgs() < 2)
    return false; // idx_xxx(arg, len)

  const Expr *arg0 = peel(CE->getArg(0)); // i / i+j / 2*n-1 / ...
  const Expr *arg1 = peel(CE->getArg(1)); // nwords / 2*nwords

  // 第2引数: nwords or 2*nwords を期待
  if (!isN_or_2N(arg1, I, J, N))
    return false;

  // 第1引数は従来の許容形（低位/高位/最終語）であれば OK とみなす
  return indexMatchesAllowedShapesCore(arg0, I, J, N);
}

// ============ 要素型のチェック（unsigned / ap_uint<...>） ============
static bool isUnsignedOrApUint(const QualType &T)
{
  QualType C = T.getCanonicalType();
  if (C->isUnsignedIntegerType())
    return true;
  if (const auto *TD = dyn_cast<TypedefType>(C))
  {
    QualType U = TD->getDecl()->getUnderlyingType().getCanonicalType();
    if (U->isUnsignedIntegerType())
      return true;
  }
  if (const auto *TST = dyn_cast<TemplateSpecializationType>(C))
  {
    if (const TemplateDecl *TDcl = TST->getTemplateName().getAsTemplateDecl())
    {
      std::string nm = TDcl->getNameAsString();
      if (nm == "ap_uint")
        return true;
    }
  }
  return false;
}

static bool pointeeIsUnsignedOrApUint(const ParmVarDecl *P)
{
  if (!P)
    return false;
  QualType QT = P->getType();
  if (!QT->isPointerType())
    return false;
  QualType EL = QT->getPointeeType();
  return isUnsignedOrApUint(EL);
}

// =======================================================

class BodyScanner : public RecursiveASTVisitor<BodyScanner>
{
public:
  BodyScanner(const ParmVarDecl *A, const ParmVarDecl *B, const ParmVarDecl *C,
              const ParmVarDecl *N, const SourceManager &SM, const LangOptions &LO)
      : A(A), B(B), C(C), N(N), SM(SM), LO(LO) {}

  // ---- 由来判定（a/b から読み出した値か？） ----
  bool isArrayFromParamCore(const Expr *E, const ParmVarDecl *P) const
  {
    E = peel(E);
    if (const auto *ASE = dyn_cast<ArraySubscriptExpr>(E))
    {
      const Expr *base = peel(ASE->getBase());
      if (const auto *DRE = dyn_cast<DeclRefExpr>(base))
        return DRE->getDecl() == P;
    }
    // *(a + k) / *(k + a)
    if (const auto *UO = dyn_cast<UnaryOperator>(E))
    {
      if (UO->getOpcode() == UO_Deref)
      {
        const Expr *S = peel(UO->getSubExpr());
        if (const auto *BO = dyn_cast<BinaryOperator>(S))
        {
          if (BO->getOpcode() == BO_Add)
          {
            auto isBase = [&](const Expr *X)
            {
              X = peel(X);
              if (const auto *DRE = dyn_cast<DeclRefExpr>(X))
                return DRE->getDecl() == P;
              return false;
            };
            if (isBase(BO->getLHS()) || isBase(BO->getRHS()))
              return true;
          }
        }
      }
    }
    return false;
  }
  bool isAliasOf(const Expr *E, const ParmVarDecl *P) const
  {
    E = peel(E);
    if (const auto *DRE = dyn_cast<DeclRefExpr>(E))
    {
      if (const auto *VD = dyn_cast<VarDecl>(DRE->getDecl()))
      {
        if (P == A)
          return AliasA.count(VD);
        if (P == B)
          return AliasB.count(VD);
      }
    }
    return false;
  }
  bool exprFromParam(const Expr *E, const ParmVarDecl *P) const
  {
    return isArrayFromParamCore(E, P) || isAliasOf(E, P);
  }

  // ---- VarDecl 初期化子から alias 登録 ----
  bool VisitVarDecl(VarDecl *VD)
  {
    if (const Expr *Init = VD->getInit())
    {
      if (isArrayFromParamCore(Init, A))
        AliasA.insert(VD);
      else if (isArrayFromParamCore(Init, B))
        AliasB.insert(VD);
    }
    return true;
  }

  // ---- 代入での alias 登録 / 乗算検出 / c への書込み（インデックス形判定も） ----
  bool VisitBinaryOperator(BinaryOperator *BO)
  {
    // エイリアス登録
    if (BO->isAssignmentOp() && BO->getOpcode() == BO_Assign)
    {
      const Expr *LHS = peel(BO->getLHS());
      const Expr *RHS = peel(BO->getRHS());
      if (const auto *DRE = dyn_cast<DeclRefExpr>(LHS))
      {
        if (const auto *VD = dyn_cast<VarDecl>(DRE->getDecl()))
        {
          if (isArrayFromParamCore(RHS, A))
            AliasA.insert(VD);
          if (isArrayFromParamCore(RHS, B))
            AliasB.insert(VD);
        }
      }
    }

    // 乗算（組込み '*': BinaryOperator）
    if (BO->getOpcode() == BO_Mul)
    {
      const Expr *L = BO->getLHS();
      const Expr *R = BO->getRHS();
      bool fromA_L = exprFromParam(L, A), fromB_L = exprFromParam(L, B);
      bool fromA_R = exprFromParam(R, A), fromB_R = exprFromParam(R, B);
      bool hit = LooseOpt ? (fromA_L || fromB_L || fromA_R || fromB_R)
                          : ((fromA_L && fromB_R) || (fromB_L && fromA_R));
      if (hit)
      {
        ++MulHitsAST;
        if (TraceOpt)
          traceMul("BO_Mul", L, R);
      }
    }

    // 内側ループの禁止演算子チェック（★ マクロ展開由来は無視可能）
    if (ForDepth >= 2)
    {
      if (IgnoreOpsInMacros && BO->getExprLoc().isMacroID())
      {
        // ignore
      }
      else
      {
        BinaryOperatorKind K = BO->getOpcode();
        bool bad = false;
        if (BanMod && K == BO_Rem)
          bad = true; // %
        if (BanDiv && K == BO_Div)
          bad = true; // /
        if (BanShift && (K == BO_Shl || K == BO_Shr))
          bad = true; // << >>
        if (BanBitwise && (K == BO_And || K == BO_Or || K == BO_Xor))
          bad = true; // &,|,^
        if (bad)
          ++ForbiddenOps;
      }
    }

    // c[...] への書込み（インデックス形の統計）
    if (BO->isAssignmentOp())
    {
      const Expr *L = peel(BO->getLHS());
      if (const auto *ASE = dyn_cast<ArraySubscriptExpr>(L))
      {
        const Expr *base = peel(ASE->getBase());
        if (const auto *DRE = dyn_cast<DeclRefExpr>(base))
        {
          if (DRE->getDecl() == C)
          {
            WritesC = true;
            ++CIdxWritesTotal;
            const VarDecl *I = LoopVars.size() >= 1 ? LoopVars[LoopVars.size() - 1] : nullptr;
            const VarDecl *J = LoopVars.size() >= 2 ? LoopVars[LoopVars.size() - 2] : nullptr;
            if (!RequireIndexShape || indexMatchesAllowedShapes(ASE->getIdx(), I, J, N))
            {
              ++CIdxWritesGood;
            }
          }
        }
        if (containsNwordsMinus(ASE->getIdx()))
          MSWStyle = true;
      }
    }
    return true;
  }

  // ---- 乗算（オーバーロード operator*）----
  bool VisitCXXOperatorCallExpr(CXXOperatorCallExpr *CE)
  {
    if (CE->getOperator() != OO_Star || CE->getNumArgs() < 2)
      return true;
    const Expr *L = CE->getArg(0);
    const Expr *R = CE->getArg(1);
    bool fromA_L = exprFromParam(L, A), fromB_L = exprFromParam(L, B);
    bool fromA_R = exprFromParam(R, A), fromB_R = exprFromParam(R, B);
    bool hit = LooseOpt ? (fromA_L || fromB_L || fromA_R || fromB_R)
                        : ((fromA_L && fromB_R) || (fromB_L && fromA_R));
    if (hit)
    {
      ++MulHitsAST;
      if (TraceOpt)
        traceMul("OO_Star", L, R);
    }
    return true;
  }

  // ---- 内側ループでの関数呼び出し制限（★ マクロ展開由来は無視可能） ----
  bool VisitCallExpr(CallExpr *CE)
  {
    if (ForDepth < 2 || !ForbidInnerCalls)
      return true;
    if (IgnoreCallsInMacros && CE->getExprLoc().isMacroID())
      return true;

    const FunctionDecl *FD = CE->getDirectCallee();
    if (!FD)
    {
      ++InnerCallsDisallowed;
      return true;
    }
    std::string name = FD->getNameAsString();
    if (AllowSet.count(name) == 0)
      ++InnerCallsDisallowed;
    return true;
  }

  // ---- for ネスト検出 + ループ変数スタック ----
  bool TraverseForStmt(ForStmt *FS)
  {
    ForDepth++;
    if (ForDepth >= 2)
      HasNested = true;

    const VarDecl *LV = guessLoopVar(FS);
    if (LV)
      LoopVars.push_back(LV);

    RecursiveASTVisitor<BodyScanner>::TraverseForStmt(FS);

    if (LV && !LoopVars.empty() && LoopVars.back() == LV)
      LoopVars.pop_back();
    ForDepth--;
    return true;
  }

  // 本文（マクロ数え用）
  void setBody(const CompoundStmt *B) { Body = B; }

  void postCountMacros()
  {
    if (!Body)
      return;
    std::vector<std::string> names(MulMacros.begin(), MulMacros.end());
    if (names.empty())
      names.push_back("MUL"); // 既定
    MulHitsMacro = countMacroHitsInBody(Body, SM, LO, names);
    if (TraceOpt && MulHitsMacro > 0)
    {
      llvm::outs() << "  [trace] macro mul hits in body: " << MulHitsMacro << "\n";
    }
  }

  void setAllowCalls(const std::unordered_set<std::string> &S) { AllowSet = S; }

  // 結果
  unsigned getMulHitsTotal() const { return MulHitsAST + MulHitsMacro; }
  bool hasWritesC() const { return WritesC; }
  bool hasNestedLoops() const { return HasNested; }
  bool mswStyle() const { return MSWStyle; }
  unsigned forbiddenOps() const { return ForbiddenOps; }
  unsigned innerCallsDisallowed() const { return InnerCallsDisallowed; }
  unsigned cIdxWritesTotal() const { return CIdxWritesTotal; }
  unsigned cIdxWritesGood() const { return CIdxWritesGood; }

private:
  void traceMul(const char *kind, const Expr *L, const Expr *R) const
  {
    std::string ls = getSourceText(L, SM, LO);
    std::string rs = getSourceText(R, SM, LO);
    if (ls.size() > 120)
      ls = ls.substr(0, 120) + "...";
    if (rs.size() > 120)
      rs = rs.substr(0, 120) + "...";
    llvm::outs() << "  [trace] mul(" << kind << "): LHS=\"" << ls
                 << "\" , RHS=\"" << rs << "\"\n";
  }

  bool containsNwordsMinus(const Expr *E) const
  {
    E = peel(E);
    bool hasN = false, hasMinus = false;
    std::function<void(const Expr *)> walk = [&](const Expr *X)
    {
      X = peel(X);
      if (const auto *DRE = dyn_cast<DeclRefExpr>(X))
        if (DRE->getDecl() == N)
          hasN = true;
      if (const auto *BO = dyn_cast<BinaryOperator>(X))
      {
        if (BO->getOpcode() == BO_Sub)
          hasMinus = true;
        walk(BO->getLHS());
        walk(BO->getRHS());
      }
      else if (const auto *UO = dyn_cast<UnaryOperator>(X))
      {
        walk(UO->getSubExpr());
      }
      else if (const auto *CO = dyn_cast<ConditionalOperator>(X))
      {
        walk(CO->getCond());
        walk(CO->getTrueExpr());
        walk(CO->getFalseExpr());
      }
      else if (const auto *A = dyn_cast<ArraySubscriptExpr>(X))
      {
        walk(A->getBase());
        walk(A->getIdx());
      }
      else if (const auto *C = dyn_cast<CallExpr>(X))
      {
        for (auto *Arg : C->arguments())
          walk(Arg);
      }
    };
    walk(E);
    return hasN && hasMinus;
  }

  const ParmVarDecl *A;
  const ParmVarDecl *B;
  const ParmVarDecl *C;
  const ParmVarDecl *N;
  const SourceManager &SM;
  const LangOptions &LO;
  const CompoundStmt *Body = nullptr;

  std::set<const VarDecl *> AliasA, AliasB;
  unsigned MulHitsAST = 0;
  unsigned MulHitsMacro = 0;

  bool WritesC = false;
  bool HasNested = false;
  bool MSWStyle = false;

  int ForDepth = 0;
  std::vector<const VarDecl *> LoopVars;

  unsigned ForbiddenOps = 0;
  unsigned InnerCallsDisallowed = 0;

  unsigned CIdxWritesTotal = 0;
  unsigned CIdxWritesGood = 0;

  std::unordered_set<std::string> AllowSet;
};

// =======================================================

// 学校式乗算の実装を生成する関数
static void generateSchoolbookMul(std::ostringstream &oss,
                                  const std::string &aName, const std::string &bName,
                                  const std::string &cName, const std::string &nName,
                                  unsigned mulBits, bool lswFirst)
{
  // HLSディレクティブ（オプションで挿入）
  if (!NoHLSDirectives)
  {
    oss << "  #pragma HLS INLINE off\n"
        << "  #pragma HLS ALLOCATION instances = mul limit = 1 operation\n"
        << "  #pragma HLS ALLOCATION instances = mul limit = 1 function\n"
        << "  #pragma HLS RESOURCE variable = " << aName << " core = RAM_1P\n"
        << "  #pragma HLS RESOURCE variable = " << bName << " core = RAM_1P\n"
        << "  #pragma HLS RESOURCE variable = " << cName << " core = RAM_1P\n"
        << "  #pragma HLS BIND_STORAGE variable = " << aName << " type = RAM_1P\n"
        << "  #pragma HLS BIND_STORAGE variable = " << bName << " type = RAM_1P\n"
        << "  #pragma HLS BIND_STORAGE variable = " << cName << " type = RAM_1P\n"
        << "  #pragma HLS RESOURCE core = Mul_LUT\n"
        << "  #pragma HLS DATAFLOW off\n";
  }

  // 結果配列の初期化
  oss << "  // 結果配列を初期化\n"
      << "  for (unsigned i = 0; i < 2 * " << nName << "; ++i) {\n"
      << "    " << cName << "[i] = 0;\n"
      << "  }\n\n";

  // 学校式乗算アルゴリズム
  oss << "  // 学校式乗算アルゴリズム (" << mulBits << "ビット単位)\n";

  if (mulBits == 32)
  {
    // 32ビット単位の乗算
    oss << "  for (unsigned i = 0; i < " << nName << "; ++i) {\n"
        << "    for (unsigned j = 0; j < " << nName << "; ++j) {\n"
        << "      // 32ビット×32ビットの乗算\n"
        << "      ap_uint<64> product = (ap_uint<32>)" << aName << "[i] * (ap_uint<32>)" << bName << "[j];\n"
        << "      ap_uint<32> low = product.range(31, 0);\n"
        << "      ap_uint<32> high = product.range(63, 32);\n\n"
        << "      // 現在の位置に加算\n"
        << "      ap_uint<64> sum = " << cName << "[i + j] + low;\n"
        << "      " << cName << "[i + j] = sum.range(31, 0);\n"
        << "      ap_uint<32> carry = sum.range(63, 32);\n\n"
        << "      // キャリーを次の位置に伝播\n"
        << "      unsigned int pos = i + j + 1;\n"
        << "      while (carry > 0 && pos < 2 * " << nName << ") {\n"
        << "        ap_uint<64> next_sum = " << cName << "[pos] + carry;\n"
        << "        " << cName << "[pos] = next_sum.range(31, 0);\n"
        << "        carry = next_sum.range(63, 32);\n"
        << "        pos++;\n"
        << "      }\n\n"
        << "      // 上位ビットを加算\n"
        << "      if (i + j + 1 < 2 * " << nName << ") {\n"
        << "        ap_uint<64> high_sum = " << cName << "[i + j + 1] + high;\n"
        << "        " << cName << "[i + j + 1] = high_sum.range(31, 0);\n"
        << "        ap_uint<32> high_carry = high_sum.range(63, 32);\n\n"
        << "        // 上位ビットのキャリーも伝播\n"
        << "        pos = i + j + 2;\n"
        << "        while (high_carry > 0 && pos < 2 * " << nName << ") {\n"
        << "          ap_uint<64> next_sum = " << cName << "[pos] + high_carry;\n"
        << "          " << cName << "[pos] = next_sum.range(31, 0);\n"
        << "          high_carry = next_sum.range(63, 32);\n"
        << "          pos++;\n"
        << "        }\n"
        << "      }\n"
        << "    }\n"
        << "  }\n";
  }
  else if (mulBits == 16)
  {
    // 16ビット単位の乗算
    oss << "  for (unsigned i = 0; i < " << nName << "; ++i) {\n"
        << "    for (unsigned j = 0; j < " << nName << "; ++j) {\n"
        << "      // 16ビット×16ビットの乗算\n"
        << "      ap_uint<32> product = (ap_uint<16>)" << aName << "[i] * (ap_uint<16>)" << bName << "[j];\n"
        << "      ap_uint<16> low = product.range(15, 0);\n"
        << "      ap_uint<16> high = product.range(31, 16);\n\n"
        << "      // 現在の位置に加算\n"
        << "      ap_uint<32> sum = " << cName << "[i + j] + low;\n"
        << "      " << cName << "[i + j] = sum.range(15, 0);\n"
        << "      ap_uint<16> carry = sum.range(31, 16);\n\n"
        << "      // キャリーを次の位置に伝播\n"
        << "      unsigned int pos = i + j + 1;\n"
        << "      while (carry > 0 && pos < 2 * " << nName << ") {\n"
        << "        ap_uint<32> next_sum = " << cName << "[pos] + carry;\n"
        << "        " << cName << "[pos] = next_sum.range(15, 0);\n"
        << "        carry = next_sum.range(31, 16);\n"
        << "        pos++;\n"
        << "      }\n\n"
        << "      // 上位ビットを加算\n"
        << "      if (i + j + 1 < 2 * " << nName << ") {\n"
        << "        ap_uint<32> high_sum = " << cName << "[i + j + 1] + high;\n"
        << "        " << cName << "[i + j + 1] = high_sum.range(15, 0);\n"
        << "        ap_uint<16> high_carry = high_sum.range(31, 16);\n\n"
        << "        // 上位ビットのキャリーも伝播\n"
        << "        pos = i + j + 2;\n"
        << "        while (high_carry > 0 && pos < 2 * " << nName << ") {\n"
        << "          ap_uint<32> next_sum = " << cName << "[pos] + high_carry;\n"
        << "          " << cName << "[pos] = next_sum.range(15, 0);\n"
        << "          high_carry = next_sum.range(31, 16);\n"
        << "          pos++;\n"
        << "        }\n"
        << "      }\n"
        << "    }\n"
        << "  }\n";
  }
  else
  {
    // デフォルトは64ビット単位
    oss << "  for (unsigned i = 0; i < " << nName << "; ++i) {\n"
        << "    for (unsigned j = 0; j < " << nName << "; ++j) {\n"
        << "      // 64ビット×64ビットの乗算\n"
        << "      ap_uint<128> product = (ap_uint<64>)" << aName << "[i] * (ap_uint<64>)" << bName << "[j];\n"
        << "      ap_uint<64> low = product.range(63, 0);\n"
        << "      ap_uint<64> high = product.range(127, 64);\n\n"
        << "      // 現在の位置に加算\n"
        << "      ap_uint<128> sum = " << cName << "[i + j] + low;\n"
        << "      " << cName << "[i + j] = sum.range(63, 0);\n"
        << "      ap_uint<64> carry = sum.range(127, 64);\n\n"
        << "      // キャリーを次の位置に伝播\n"
        << "      unsigned int pos = i + j + 1;\n"
        << "      while (carry > 0 && pos < 2 * " << nName << ") {\n"
        << "        ap_uint<128> next_sum = " << cName << "[pos] + carry;\n"
        << "        " << cName << "[pos] = next_sum.range(63, 0);\n"
        << "        carry = next_sum.range(127, 64);\n"
        << "        pos++;\n"
        << "      }\n\n"
        << "      // 上位ビットを加算\n"
        << "      if (i + j + 1 < 2 * " << nName << ") {\n"
        << "        ap_uint<128> high_sum = " << cName << "[i + j + 1] + high;\n"
        << "        " << cName << "[i + j + 1] = high_sum.range(63, 0);\n"
        << "        ap_uint<64> high_carry = high_sum.range(127, 64);\n\n"
        << "        // 上位ビットのキャリーも伝播\n"
        << "        pos = i + j + 2;\n"
        << "        while (high_carry > 0 && pos < 2 * " << nName << ") {\n"
        << "          ap_uint<128> next_sum = " << cName << "[pos] + high_carry;\n"
        << "          " << cName << "[pos] = next_sum.range(63, 0);\n"
        << "          high_carry = next_sum.range(127, 64);\n"
        << "          pos++;\n"
        << "        }\n"
        << "      }\n"
        << "    }\n"
        << "  }\n";
  }
}

// =======================================================

class Callback : public MatchFinder::MatchCallback
{
public:
  explicit Callback(Rewriter &R) : R(R) {}

  void run(const MatchFinder::MatchResult &Res) override
  {
    const auto *FD = Res.Nodes.getNodeAs<FunctionDecl>("F");
    if (!FD || !FD->hasBody())
      return;
    const auto *Body = dyn_cast<CompoundStmt>(FD->getBody());
    if (!Body)
      return;

    // パラメータ推定：ポインタ3本 + 整数1本（nwords）
    const ParmVarDecl *A = nullptr, *B = nullptr, *C = nullptr, *N = nullptr;
    std::vector<const ParmVarDecl *> ptrs, ints;
    for (auto *P : FD->parameters())
    {
      QualType QT = P->getType();
      if (QT->isPointerType())
        ptrs.push_back(P);
      if (QT->isIntegerType())
        ints.push_back(P);
      if (!N && P->getName() == "nwords")
        N = P;
    }
    if (!N && !ints.empty())
      N = ints.front();
    if (ptrs.size() >= 3)
    {
      A = ptrs[0];
      B = ptrs[1];
      C = ptrs[2];
    }
    else
      return;

    // 型制約（a,b,c の要素型）
    bool digitsOK = true;
    if (UnsignedOnly)
    {
      digitsOK = pointeeIsUnsignedOrApUint(A) &&
                 pointeeIsUnsignedOrApUint(B) &&
                 pointeeIsUnsignedOrApUint(C);
    }

    BodyScanner scan(A, B, C, N, *Res.SourceManager, Res.Context->getLangOpts());
    scan.setBody(Body);

    // 内側ループで許可する呼び出し名（デフォルトに idx_in/idx_out を含める）
    std::unordered_set<std::string> allowSet = {"idx_in", "idx_out"};
    for (const auto &s : AllowCallInner)
      allowSet.insert(s);
    scan.setAllowCalls(allowSet);

    scan.TraverseStmt(const_cast<CompoundStmt *>(Body));
    scan.postCountMacros();

    unsigned mulHits = scan.getMulHitsTotal();
    double idxRatio = 1.0;
    if (scan.cIdxWritesTotal() > 0)
    {
      idxRatio = double(scan.cIdxWritesGood()) / double(scan.cIdxWritesTotal());
    }

    bool indexOK = (!RequireIndexShape) ||
                   (scan.cIdxWritesTotal() == 0) ||
                   (idxRatio >= getMinIdxRatio());

    bool opsOK = (scan.forbiddenOps() == 0);
    bool callsOK = (!ForbidInnerCalls) || (scan.innerCallsDisallowed() == 0);

    bool candidate =
        scan.hasNestedLoops() &&
        (mulHits >= MulHitThreshold) &&
        scan.hasWritesC() &&
        indexOK &&
        opsOK &&
        callsOK &&
        digitsOK;

    bool lswFirst = true;
    if (ForceLSW)
      lswFirst = true;
    else if (ForceMSW)
      lswFirst = false;
    else
      lswFirst = !scan.mswStyle();

    llvm::outs() << "[mpx-auto] Function '" << FD->getNameAsString()
                 << "': mulHits=" << mulHits
                 << ", nested=" << scan.hasNestedLoops()
                 << ", writesC=" << scan.hasWritesC()
                 << ", idx_ok=" << scan.cIdxWritesGood() << "/" << scan.cIdxWritesTotal()
                 << ", badops=" << scan.forbiddenOps()
                 << ", innerCalls=" << scan.innerCallsDisallowed()
                 << ", digitsOK=" << (digitsOK ? "1" : "0")
                 << ", endian=" << (lswFirst ? "LSW-first" : "MSW-first")
                 << " => " << (candidate ? "CONVERT" : "SKIP") << "\n";

    if (!candidate || DryRun)
      return;

    if (InsertIncludes && !IncludesInserted)
    {
      const SourceManager &SM = R.getSourceMgr();
      FileID FID = SM.getMainFileID();
      SourceLocation FileStart = SM.getLocForStartOfFile(FID);
      std::ostringstream ih;
      ih << "#include <ap_int.h>\n"
         << "#include <climits>\n"
         << "#include <type_traits>\n"
         << "#include \"" << IncludeHeader.getValue() << "\"\n";
      R.InsertText(FileStart, ih.str(), true, true);
      IncludesInserted = true;
    }

    auto nameOf = [](const ParmVarDecl *P) -> std::string
    { return P ? P->getNameAsString() : ""; };
    std::string hlsPragmas = extractHLSPragmas(Body, R.getSourceMgr(), Res.Context->getLangOpts());

    std::ostringstream oss;
    oss << "{\n";
    if (!hlsPragmas.empty() && !NoHLSDirectives)
      oss << "  " << hlsPragmas;

    if (UseSchoolbook && MulBits > 0)
    {
      // 学校式演算モード
      oss << "  // Auto-converted by mpx_auto_rewriter_v4_2 (schoolbook multiplication)\n"
          << "  constexpr unsigned MAX_NWORDS = " << MaxNWords << ";\n"
          << "  constexpr unsigned MUL_BITS = " << MulBits << ";\n"
          << "  using DigitA = std::remove_cv_t<std::remove_pointer_t<decltype(" << nameOf(A) << ")>>;\n"
          << "  using DigitB = std::remove_cv_t<std::remove_pointer_t<decltype(" << nameOf(B) << ")>>;\n"
          << "  using DigitC = std::remove_cv_t<std::remove_pointer_t<decltype(" << nameOf(C) << ")>>;\n"
          << "  static_assert(sizeof(DigitA) == sizeof(DigitB) && sizeof(DigitA) == sizeof(DigitC),\n"
          << "                \"a,b,c digits must have the same size\");\n";
      if (UnsignedOnly)
      {
        oss << "  static_assert(std::is_unsigned<DigitA>::value || std::is_class<DigitA>::value,\n"
            << "                \"Digit type must be unsigned or ap_uint-like\");\n";
      }
      oss << "  using Digit = DigitA;\n"
          << "  if (" << nameOf(N) << " > MAX_NWORDS) return;\n";

      // 学校式乗算の実装を生成
      generateSchoolbookMul(oss, nameOf(A), nameOf(B), nameOf(C), nameOf(N), MulBits, lswFirst);
    }
    else
    {
      // 従来のPackedOpsモード
      oss << "  // Auto-converted by mpx_auto_rewriter_v4_2 (pack × mul × unpack)\n"
          << "  constexpr unsigned MAX_NWORDS = " << MaxNWords << ";\n"
          << "  using DigitA = std::remove_cv_t<std::remove_pointer_t<decltype(" << nameOf(A) << ")>>;\n"
          << "  using DigitB = std::remove_cv_t<std::remove_pointer_t<decltype(" << nameOf(B) << ")>>;\n"
          << "  using DigitC = std::remove_cv_t<std::remove_pointer_t<decltype(" << nameOf(C) << ")>>;\n"
          << "  static_assert(sizeof(DigitA) == sizeof(DigitB) && sizeof(DigitA) == sizeof(DigitC),\n"
          << "                \"a,b,c digits must have the same size\");\n";
      if (UnsignedOnly)
      {
        oss << "  static_assert(std::is_unsigned<DigitA>::value || std::is_class<DigitA>::value,\n"
            << "                \"Digit type must be unsigned or ap_uint-like\");\n";
      }
      oss << "  using Digit = DigitA;\n"
          << "  if (" << nameOf(N) << " > MAX_NWORDS) return;\n"
          << "  mpx::PackedOps<Digit, MAX_NWORDS, " << (lswFirst ? "true" : "false")
          << ">::mul(" << nameOf(A) << ", " << nameOf(B) << ", " << nameOf(C) << ", " << nameOf(N) << ");\n";
    }

    oss << "}\n";

    R.ReplaceText(Body->getSourceRange(), oss.str());
  }

private:
  Rewriter &R;
  bool IncludesInserted = false;
};

// =======================================================

class Consumer : public ASTConsumer
{
public:
  explicit Consumer(Rewriter &R) : CB(R)
  {
    Finder.addMatcher(functionDecl(isDefinition()).bind("F"), &CB);
  }
  void HandleTranslationUnit(ASTContext &C) override { Finder.matchAST(C); }

private:
  MatchFinder Finder;
  Callback CB;
};

class Action : public ASTFrontendAction
{
public:
  void EndSourceFileAction() override { 
    if (OutputFile.getValue().empty()) {
      TheRewriter.overwriteChangedFiles();
    } else {
      // 指定されたファイル名に出力
      std::error_code EC;
      llvm::raw_fd_ostream OS(OutputFile.getValue(), EC);
      if (EC) {
        llvm::errs() << "Error opening output file: " << EC.message() << "\n";
        return;
      }
      TheRewriter.getEditBuffer(TheRewriter.getSourceMgr().getMainFileID()).write(OS);
    }
  }
  std::unique_ptr<ASTConsumer> CreateASTConsumer(CompilerInstance &CI, StringRef) override
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
  if (!Opts)
  {
    llvm::errs() << "Options error\n";
    return 1;
  }

  // 0..1 にクランプ
  double v = MinIndexOkRatioOpt;
  if (v < 0.0)
    v = 0.0;
  if (v > 1.0)
    v = 1.0;
  g_MinIdxRatio = v;

  ClangTool Tool(Opts->getCompilations(), Opts->getSourcePathList());
  return Tool.run(newFrontendActionFactory<Action>().get());
}
