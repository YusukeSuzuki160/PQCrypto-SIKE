// mp_mul_rewriter.cpp
// Clang LibTooling-based transformer: replace the body of
//   void mp_mul(const digit_t* a, const digit_t* b, digit_t* c, const unsigned int nwords)
// with ap_uint-based packed multiply.
//
// Build with CMake (see CMakeLists.txt below).

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

// コマンドラインオプションをグローバルスコープで定義
static llvm::cl::OptionCategory ToolCategory("mp-mul-rewriter options");

static llvm::cl::opt<std::string> FuncName(
    "func-name",
    llvm::cl::desc("Target function name to rewrite"),
    llvm::cl::init("mp_mul"),
    llvm::cl::cat(ToolCategory));

static llvm::cl::opt<unsigned> MaxNWords(
    "max-nwords",
    llvm::cl::desc("MAX_NWORDS value to embed"),
    llvm::cl::init(8),
    llvm::cl::cat(ToolCategory));

static llvm::cl::opt<bool> InsertIncludes(
    "insert-includes",
    llvm::cl::desc("Insert #include <ap_int.h> and <climits> at file top"),
    llvm::cl::init(true),
    llvm::cl::cat(ToolCategory));

class MpMulCallback : public MatchFinder::MatchCallback
{
public:
    explicit MpMulCallback(Rewriter &R) : R(R), IncludesInserted(false) {}

    void run(const MatchFinder::MatchResult &Result) override
    {
        const auto *FD = Result.Nodes.getNodeAs<FunctionDecl>("targetFunc");
        if (!FD || !FD->hasBody())
            return;

        const auto *Body = dyn_cast<CompoundStmt>(FD->getBody());
        if (!Body)
            return;

        // Insert includes at file top if requested
        if (InsertIncludes && !IncludesInserted)
        {
            const SourceManager &SM = R.getSourceMgr();
            FileID FID = SM.getMainFileID();
            SourceLocation FileStart = SM.getLocForStartOfFile(FID);
            // Always insert; multiple includes are harmless and idempotent for these headers.
            R.InsertText(FileStart, "#include <ap_int.h>\n#include <climits>\n", true, true);
            IncludesInserted = true;
        }

        // Generate new body
        std::ostringstream oss;
        oss << "{\n"
            << "  // Auto-converted by mp_mul_rewriter (pack \u00D7 multiply \u00D7 unpack)\n"
            << "  constexpr unsigned MAX_NWORDS = " << MaxNWords << ";\n"
            << "  constexpr unsigned W = CHAR_BIT * sizeof(*a);\n"
            << "\n"
            << "  ap_uint<W * MAX_NWORDS> A = 0, B = 0;\n"
            << "\n"
            << "  for (unsigned i = 0; i < nwords; ++i) {\n"
            << "    A |= (ap_uint<W * MAX_NWORDS>)((ap_uint<W>)a[i]) << (i * W);\n"
            << "    B |= (ap_uint<W * MAX_NWORDS>)((ap_uint<W>)b[i]) << (i * W);\n"
            << "  }\n"
            << "\n"
            << "  ap_uint<2 * W * MAX_NWORDS> P =\n"
            << "      (ap_uint<W * MAX_NWORDS>)A * (ap_uint<W * MAX_NWORDS>)B;\n"
            << "\n"
            << "  for (unsigned i = 0; i < 2 * nwords; ++i) {\n"
            << "    c[i] = P.range((i + 1) * W - 1, i * W);\n"
            << "  }\n"
            << "}\n";

        R.ReplaceText(Body->getSourceRange(), oss.str());
    }

private:
    Rewriter &R;
    bool IncludesInserted;
};

class MpMulASTConsumer : public ASTConsumer
{
public:
    explicit MpMulASTConsumer(Rewriter &R) : Callback(R)
    {
        auto Matcher =
            functionDecl(isDefinition(), hasName(FuncName)).bind("targetFunc");
        Finder.addMatcher(Matcher, &Callback);
    }

    void HandleTranslationUnit(ASTContext &Context) override
    {
        Finder.matchAST(Context);
    }

private:
    MatchFinder Finder;
    MpMulCallback Callback;
};

class MpMulFrontendAction : public ASTFrontendAction
{
public:
    void EndSourceFileAction() override
    {
        SourceManager &SM = TheRewriter.getSourceMgr();
        TheRewriter.overwriteChangedFiles(); // in-place save
    }

    std::unique_ptr<ASTConsumer> CreateASTConsumer(CompilerInstance &CI,
                                                   StringRef file) override
    {
        TheRewriter.setSourceMgr(CI.getSourceManager(), CI.getLangOpts());
        return std::make_unique<MpMulASTConsumer>(TheRewriter);
    }

private:
    Rewriter TheRewriter;
};

int main(int argc, const char **argv)
{
    // LLVM 18との互換性のため、コマンドラインオプションの初期化は行わない
    // llvm::cl::ParseCommandLineOptions(argc, argv, "mp-mul-rewriter\n");

    llvm::Expected<CommonOptionsParser> OptionsParser =
        CommonOptionsParser::create(argc, argv, ToolCategory);
    if (!OptionsParser)
    {
        llvm::errs() << "Error parsing options: "
                     << llvm::toString(OptionsParser.takeError()) << "\n";
        return 1;
    }

    ClangTool Tool(OptionsParser->getCompilations(),
                   OptionsParser->getSourcePathList());

    return Tool.run(newFrontendActionFactory<MpMulFrontendAction>().get());
}
