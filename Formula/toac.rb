class Toac < Formula
  desc "Compiler and language tooling for TOAD .agent files"
  homepage "https://zubeidhendricks.github.io/toad/"
  url "https://registry.npmjs.org/toad-compiler/-/toad-compiler-0.7.0.tgz"
  sha256 "42763a984e86ee66bc0d9cf52364e8f6aab2d52d20d038139fc3a25269fafe2b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir[libexec/"bin/*"]
  end

  test do
    assert_match "toac #{version}", shell_output("#{bin}/toac --version")
    system bin/"toac", "init", "hello"
    system bin/"toac", "check", "hello.agent"
    system bin/"toac", "build", "hello.agent"
    assert_path_exists testpath/"hello.ts"
  end
end
