class Toac < Formula
  desc "Compiler and language tooling for TOAD .agent files"
  homepage "https://zubeidhendricks.github.io/toad/"
  url "https://registry.npmjs.org/toad-compiler/-/toad-compiler-0.7.2.tgz"
  sha256 "b199fe2d84ac8780797b9a1cd99d74a5d76e40e2928667d09158a88eabca15b5"
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
