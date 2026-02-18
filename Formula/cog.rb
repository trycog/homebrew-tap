class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.2.0/cog-darwin-arm64.tar.gz"
      sha256 "04bee0bb01fd1b2c86a3ec5f4e68aba701f267022e3eae03d4ac3d5cefc717f2"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.2.0/cog-darwin-x86_64.tar.gz"
      sha256 "c52573f17c888fe7e54e9c92e6dbfb3ec3e0747ff61e711b6ae79cb3226b77a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.2.0/cog-linux-arm64.tar.gz"
      sha256 "529e934b70cb6ab28b803293baeb1d72906bed971cf689613a6b28a663aa50dd"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.2.0/cog-linux-x86_64.tar.gz"
      sha256 "d6a858b9b654dfafd41e384666dff2f89ecd49851f23efd86553875055a0ebca"
    end
  end

  def install
    bin.install "cog"
  end

  test do
    output = shell_output("#{bin}/cog --help 2>&1")
    assert_match "Usage:", output
  end
end
