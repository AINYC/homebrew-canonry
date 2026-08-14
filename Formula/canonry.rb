class Canonry < Formula
  desc "Agent-first AEO operating platform"
  homepage "https://canonry.ai/platform"
  url "https://registry.npmjs.org/@canonry/canonry/-/canonry-4.163.1.tgz"
  sha256 "faf18ba91613c485a7135c6bbdcb76798238acb0f4a580dcaec0e5ca9e029223"
  license "FSL-1.1-ALv2"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canonry --version")
  end
end
