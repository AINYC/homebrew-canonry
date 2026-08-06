class Canonry < Formula
  desc "Agent-first AEO operating platform"
  homepage "https://canonry.ai/platform"
  url "https://registry.npmjs.org/@canonry/canonry/-/canonry-4.148.6.tgz"
  sha256 "f563be819cc73da3d49e5bc48a090269aabb88215f139e2e4b7645c3675f9b05"
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
