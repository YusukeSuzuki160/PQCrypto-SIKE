// mpx_rewriter_v2.cpp
#include <sstream>
#include <string>

#include "clang/AST/AST.h"
#include "clang/ASTMatchers/ASTMatchFinder.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Frontend/FrontendActions.h"
#include "clang/Rewrite/Core/Rewriter.h"
#include "clang/Tooling/CommonOptionsParser.h"
#include "clang/Tooling/Tooling.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"

using namespace clang;
using namespace clang::tooling;
using namespace clang::ast_matchers;

static llvm::cl::OptionCategory ToolCategory("mpx-rewriter options");

static llvm::cl::opt<std::string> FuncName(
    "func-name",
    llvm::cl::desc("Target function name to rewrite"),
    llvm::cl::init("mp_mul"), llvm::cl::cat(ToolCategory));

static llvm::cl::opt<unsigned> MaxNWords(
    "max-nwords", llvm::cl::desc("MAX_NWORDS value"), llvm::cl::init(8),
    llvm::cl::cat(ToolCategory));

static llvm::cl::opt<std::string> Op(
    "op", llvm::cl::desc("Operation: mul|sqr|add|sub"), llvm::cl::init("mul"),
    llvm::cl::cat(ToolCategory));

static llvm::cl::opt<bool> LSWFirst(
    "lsw-first", llvm::cl::desc("true for LSW-first; false for MSW-first"),
    llvm::cl::init(true), llvm::cl::cat(ToolCategory));

static llvm::cl::opt<std::string> IncludeHeader(
    "lib-header",
    llvm::cl::desc("Header path for mpx_packed.hpp (default: mpx_packed.hpp)"),
    llvm::cl::init("mpx_packed.hpp"), llvm::cl::cat(ToolCategory));

static llvm::cl::opt<bool> InsertIncludes(
    "insert-includes",
    llvm::cl::desc("Insert #include <ap_int.h>, <climits>, <type_traits> and lib-header"),
    llvm::cl::init(true), llvm::cl::cat(ToolCategory));

class Callback : public MatchFinder::MatchCallback {
public:
  explicit Callback(Rewriter &R) : R(R), DoneIncludes(false) {}
  void run(const MatchFinder::MatchResult &Res) override {
    const auto *FD = Res.Nodes.getNodeAs<FunctionDecl>("F");
    if (!FD || !FD->hasBody()) return;
    const auto *Body = dyn_cast<CompoundStmt>(FD->getBody());
    if (!Body) return;

    if (InsertIncludes && !DoneIncludes) {
      const SourceManager &SM = R.getSourceMgr();
      FileID FID = SM.getMainFileID();
      SourceLocation Start = SM.getLocForStartOfFile(FID);
      std::ostringstream ih;
      ih << "#include <ap_int.h>\n"
         << "#include <climits>\n"
         << "#include <type_traits>\n"
         << "#include \"" << IncludeHeader.getValue() << "\"\n";
      R.InsertText(Start, ih.str(), true, true);
      DoneIncludes = true;
    }

    std::string call;
    if (Op == "mul") call = "mul(a, b, c, nwords)";
    else if (Op == "sqr") call = "sqr(a, c, nwords)";
    else if (Op == "add") call = "add(a, b, c, nwords)";
    else if (Op == "sub") call = "sub(a, b, c, nwords)";
    else call = "mul(a, b, c, nwords)"; // fallback

    std::ostringstream oss;
    oss << "{\n"
        << "  // Auto-converted by mpx_rewriter v2 (pack × op × unpack)\n"
        << "  constexpr unsigned MAX_NWORDS = " << MaxNWords << ";\n"
        << "  using DigitA = std::remove_cv_t<std::remove_pointer_t<decltype(a)>>;\n";
    if (Op != "sqr") {
      oss << "  using DigitB = std::remove_cv_t<std::remove_pointer_t<decltype(b)>>;\n";
    }
    oss << "  using DigitC = std::remove_cv_t<std::remove_pointer_t<decltype(c)>>;\n";
    if (Op != "sqr") {
      oss << "  static_assert(sizeof(DigitA) == sizeof(DigitB) && sizeof(DigitA) == sizeof(DigitC),\n"
          << "                \"a,b,c digits must have the same size\");\n";
    } else {
      oss << "  static_assert(sizeof(DigitA) == sizeof(DigitC),\n"
          << "                \"a,c digits must have the same size\");\n";
    }
    oss << "  using Digit = DigitA;\n"
        << "  mpx::PackedOps<Digit, MAX_NWORDS, " << (LSWFirst ? "true" : "false")
        << ">::" << call << ";\n"
        << "}\n";

    R.ReplaceText(Body->getSourceRange(), oss.str());
  }

private:
  Rewriter &R;
  bool DoneIncludes;
};

class Consumer : public ASTConsumer {
public:
  explicit Consumer(Rewriter &R) : CB(R) {
    Finder.addMatcher(functionDecl(hasName(FuncName), isDefinition()).bind("F"), &CB);
  }
  void HandleTranslationUnit(ASTContext &C) override { Finder.matchAST(C); }
private:
  MatchFinder Finder;
  Callback CB;
};

class Action : public ASTFrontendAction {
public:
  void EndSourceFileAction() override { TheRewriter.overwriteChangedFiles(); }
  std::unique_ptr<ASTConsumer> CreateASTConsumer(CompilerInstance &CI, StringRef) override {
    TheRewriter.setSourceMgr(CI.getSourceManager(), CI.getLangOpts());
    return std::make_unique<Consumer>(TheRewriter);
  }
private:
  Rewriter TheRewriter;
};

int main(int argc, const char** argv) {
  auto Opts = CommonOptionsParser::create(argc, argv, ToolCategory);
  if (!Opts) { llvm::errs() << "Options error\n"; return 1; }
  ClangTool Tool(Opts->getCompilations(), Opts->getSourcePathList());
  return Tool.run(newFrontendActionFactory<Action>().get());
}
