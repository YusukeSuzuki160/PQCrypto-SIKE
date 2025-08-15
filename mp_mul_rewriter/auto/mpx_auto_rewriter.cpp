// mpx_auto_rewriter.cpp
#include <sstream>
#include <string>
#include <vector>
#include <optional>

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

static llvm::cl::OptionCategory Cat("mpx-auto-rewriter options");

static llvm::cl::opt<unsigned> MaxNWords(
  "max-nwords", llvm::cl::desc("MAX_NWORDS value to embed"),
  llvm::cl::init(8), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> ForceLSW(
  "force-lsw-first", llvm::cl::desc("Force LSW-first (override detector)"),
  llvm::cl::init(false), llvm::cl::cat(Cat));

static llvm::cl::opt<bool> ForceMSW(
  "force-msw-first", llvm::cl::desc("Force MSW-first (override detector)"),
  llvm::cl::init(false), llvm::cl::cat(Cat));

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

static llvm::cl::opt<unsigned> MulHitThreshold(
  "mul-threshold",
  llvm::cl::desc("Min # of a[*]*b[*] multiplications in inner loop to consider as MP-mul"),
  llvm::cl::init(1), llvm::cl::cat(Cat));

static std::string getSourceText(const Stmt* S, const SourceManager& SM, const LangOptions& LO) {
  SourceLocation b = S->getBeginLoc();
  SourceLocation e = Lexer::getLocForEndOfToken(S->getEndLoc(), 0, SM, LO);
  if (b.isInvalid() || e.isInvalid()) return {};
  return std::string(SM.getCharacterData(b), SM.getCharacterData(e) - SM.getCharacterData(b));
}

// Extract '#pragma HLS ...' lines (very simple textual scan on function body)
static std::string extractHLSPragmas(const CompoundStmt* Body,
                                     const SourceManager& SM, const LangOptions& LO) {
  std::string txt = getSourceText(Body, SM, LO);
  std::stringstream in(txt);
  std::string line, out;
  while (std::getline(in, line)) {
    std::string s = line;
    // trim leading spaces
    auto p = s.find_first_not_of(" \t");
    if (p != std::string::npos) s = s.substr(p);
    if (s.rfind("#pragma HLS", 0) == 0) {
      out += line + "\n";
    }
  }
  return out;
}

struct FuncInfo {
  const FunctionDecl* FD = nullptr;
  const CompoundStmt* Body = nullptr;
  const ParmVarDecl*  A = nullptr;
  const ParmVarDecl*  B = nullptr;
  const ParmVarDecl*  C = nullptr;
  const ParmVarDecl*  N = nullptr; // nwords
  bool lswFirst = true; // detector guess
  unsigned mulHits = 0;
  bool writesC = false;
  bool nestedLoops = false;
};

class BodyScanner : public RecursiveASTVisitor<BodyScanner> {
public:
  BodyScanner(const FunctionDecl* FD, const ParmVarDecl* A,
              const ParmVarDecl* B, const ParmVarDecl* C,
              const ParmVarDecl* N, const SourceManager& SM,
              const LangOptions& LO)
    : FD(FD), A(A), B(B), C(C), N(N), SM(SM), LO(LO) {}

  bool VisitForStmt(ForStmt* FS) {
    // detect nested loops (for simplicity, presence of inner ForStmt)
    if (InsideFor) { HasNested = true; }
    bool prev = InsideFor;
    InsideFor = true;
    TraverseStmt(FS->getBody());
    InsideFor = prev;
    return true;
  }

  bool VisitBinaryOperator(BinaryOperator* BO) {
    // count a[*] * b[*]
    if (BO->getOpcode() == BO_Mul) {
      auto isFrom = [&](const Expr* E, const ParmVarDecl* P)->bool {
        E = E->IgnoreParenImpCasts();
        if (auto* ASE = dyn_cast<ArraySubscriptExpr>(E)) {
          const Expr* base = ASE->getBase()->IgnoreParenImpCasts();
          if (auto* DRE = dyn_cast<DeclRefExpr>(base)) {
            return DRE->getDecl() == P;
          }
        }
        return false;
      };
      if ((isFrom(BO->getLHS(), A) && isFrom(BO->getRHS(), B)) ||
          (isFrom(BO->getLHS(), B) && isFrom(BO->getRHS(), A))) {
        MulHits++;
      }
    }
    // detect c[...] = ... or c[...] += ...
    if (BO->isAssignmentOp()) {
      auto* LHS = BO->getLHS()->IgnoreParenImpCasts();
      if (auto* ASE = dyn_cast<ArraySubscriptExpr>(LHS)) {
        const Expr* base = ASE->getBase()->IgnoreParenImpCasts();
        if (auto* DRE = dyn_cast<DeclRefExpr>(base)) {
          if (DRE->getDecl() == C) WritesC = true;
        }
        // detect MSW-first heuristic: use of 'nwords' in index with minus ops
        if (containsNwordsMinus(ASE->getIdx())) {
          MSWStyle = true;
        }
      }
    }
    return true;
  }

  bool containsNwordsMinus(const Expr* E) {
    E = E->IgnoreParenImpCasts();
    bool hasN = false, hasMinus = false;
    std::function<void(const Expr*)> walk = [&](const Expr* X){
      X = X->IgnoreParenImpCasts();
      if (auto* DRE = dyn_cast<DeclRefExpr>(X)) {
        if (DRE->getDecl() == N) hasN = true;
      }
      if (auto* BO = dyn_cast<BinaryOperator>(X)) {
        if (BO->getOpcode() == BO_Sub) hasMinus = true;
        walk(BO->getLHS());
        walk(BO->getRHS());
      } else if (auto* UO = dyn_cast<UnaryOperator>(X)) {
        walk(UO->getSubExpr());
      } else if (auto* CO = dyn_cast<ConditionalOperator>(X)) {
        walk(CO->getCond()); walk(CO->getTrueExpr()); walk(CO->getFalseExpr());
      } else if (auto* A = dyn_cast<ArraySubscriptExpr>(X)) {
        walk(A->getBase()); walk(A->getIdx());
      } else if (auto* C = dyn_cast<CallExpr>(X)) {
        for (auto* Arg : C->arguments()) walk(Arg);
      }
    };
    walk(E);
    return hasN && hasMinus;
  }

  unsigned getMulHits() const { return MulHits; }
  bool hasWritesC() const { return WritesC; }
  bool hasNestedLoops() const { return HasNested; }
  bool mswStyle() const { return MSWStyle; }

private:
  const FunctionDecl* FD;
  const ParmVarDecl* A; const ParmVarDecl* B; const ParmVarDecl* C; const ParmVarDecl* N;
  const SourceManager& SM; const LangOptions& LO;
  bool InsideFor = false;
  bool HasNested = false;
  unsigned MulHits = 0;
  bool WritesC = false;
  bool MSWStyle = false;
};

class Callback : public MatchFinder::MatchCallback {
public:
  explicit Callback(Rewriter& R) : R(R) {}

  void run(const MatchFinder::MatchResult& Res) override {
    const auto* FD = Res.Nodes.getNodeAs<FunctionDecl>("F");
    if (!FD || !FD->hasBody()) return;
    const auto* Body = dyn_cast<CompoundStmt>(FD->getBody());
    if (!Body) return;

    // Collect pointer params (candidate a,b,c) and an integer param (nwords)
    const ParmVarDecl *A=nullptr, *B=nullptr, *C=nullptr, *N=nullptr;
    std::vector<const ParmVarDecl*> ptrs, ints;
    for (auto* P : FD->parameters()) {
      QualType QT = P->getType();
      if (QT->isPointerType()) ptrs.push_back(P);
      if (QT->isIntegerType()) ints.push_back(P);
      // heuristic: prefer param literally named "nwords"
      if (!N && P->getName() == "nwords") N = P;
    }
    if (!N && !ints.empty()) N = ints.front();
    if (ptrs.size() < 2) return; // need at least a & b
    // choose first 3 pointer params as a,b,c if possible
    if (ptrs.size() >= 3) { A = ptrs[0]; B = ptrs[1]; C = ptrs[2]; }
    else { return; }

    BodyScanner scan(FD, A, B, C, N, *Res.SourceManager, Res.Context->getLangOpts());
    scan.TraverseStmt(const_cast<CompoundStmt*>(Body));

    bool candidate =
      scan.hasNestedLoops() &&
      scan.getMulHits() >= MulHitThreshold &&
      scan.hasWritesC();

    // Decide endian
    bool lswFirst = true;
    if (ForceLSW) lswFirst = true;
    else if (ForceMSW) lswFirst = false;
    else lswFirst = !scan.mswStyle();

    llvm::outs() << "[mpx-auto] Function '" << FD->getNameAsString()
                 << "': mulHits=" << scan.getMulHits()
                 << ", nested=" << scan.hasNestedLoops()
                 << ", writesC=" << scan.hasWritesC()
                 << ", endian=" << (lswFirst ? "LSW-first" : "MSW-first")
                 << " => " << (candidate ? "CONVERT" : "SKIP") << "\n";

    if (!candidate || DryRun) return;

    // Insert includes once per main file
    if (InsertIncludes && !IncludesInserted) {
      const SourceManager& SM = R.getSourceMgr();
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

    // preserve HLS pragmas in body (best-effort textual extraction)
    std::string hlsPragmas = extractHLSPragmas(Body, R.getSourceMgr(), Res.Context->getLangOpts());

    // Generate new body
    std::ostringstream oss;
    oss << "{\n";
    if (!hlsPragmas.empty()) oss << "  " << hlsPragmas; // keep indentation minimal
    oss << "  // Auto-converted by mpx_auto_rewriter (pack × mul × unpack)\n"
        << "  constexpr unsigned MAX_NWORDS = " << MaxNWords << ";\n"
        << "  using DigitA = std::remove_cv_t<std::remove_pointer_t<decltype(a)>>;\n"
        << "  using DigitB = std::remove_cv_t<std::remove_pointer_t<decltype(b)>>;\n"
        << "  using DigitC = std::remove_cv_t<std::remove_pointer_t<decltype(c)>>;\n"
        << "  static_assert(sizeof(DigitA) == sizeof(DigitB) && sizeof(DigitA) == sizeof(DigitC),\n"
        << "                \"a,b,c digits must have the same size\");\n"
        << "  using Digit = DigitA;\n"
        << "  if (" << (N ? N->getNameAsString() : "nwords") << " > MAX_NWORDS) return;\n"
        << "  mpx::PackedOps<Digit, MAX_NWORDS, " << (lswFirst ? "true" : "false")
        << ">::mul(a, b, c, " << (N ? N->getNameAsString() : "nwords") << ");\n"
        << "}\n";

    R.ReplaceText(Body->getSourceRange(), oss.str());
  }

private:
  Rewriter& R;
  bool IncludesInserted = false;
};

class Consumer : public ASTConsumer {
public:
  explicit Consumer(Rewriter& R) : CB(R) {
    Finder.addMatcher(functionDecl(isDefinition()).bind("F"), &CB);
  }
  void HandleTranslationUnit(ASTContext& C) override {
    Finder.matchAST(C);
  }
private:
  MatchFinder Finder;
  Callback CB;
};

class Action : public ASTFrontendAction {
public:
  void EndSourceFileAction() override { TheRewriter.overwriteChangedFiles(); }
  std::unique_ptr<ASTConsumer> CreateASTConsumer(CompilerInstance& CI, StringRef) override {
    TheRewriter.setSourceMgr(CI.getSourceManager(), CI.getLangOpts());
    return std::make_unique<Consumer>(TheRewriter);
  }
private:
  Rewriter TheRewriter;
};

int main(int argc, const char** argv) {
  auto Opts = CommonOptionsParser::create(argc, argv, Cat);
  if (!Opts) { llvm::errs() << "Options error\n"; return 1; }
  ClangTool Tool(Opts->getCompilations(), Opts->getSourcePathList());
  return Tool.run(newFrontendActionFactory<Action>().get());
}
