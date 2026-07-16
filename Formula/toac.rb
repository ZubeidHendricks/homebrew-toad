class Toac < Formula
  desc "Compiler and language tooling for TOAD .agent files"
  homepage "https://zubeidhendricks.github.io/toad/"
  url "https://registry.npmjs.org/toad-compiler/-/toad-compiler-0.7.1.tgz"
  sha256 "646525a09337d28ebcd870ce1106a958d8688aff075b6a1313b7abcfd1775bcc"
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
