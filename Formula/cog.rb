class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.20.1/cog-darwin-arm64.tar.gz"
      sha256 "de3af5c97d7cb9ecb99d3f30283a1525c17006e3ffc561bc86e43415caea65fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.20.1/cog-linux-arm64.tar.gz"
      sha256 "bb275879e843c0a003009793c287149856a6347cfafc5ce19ee3ba1c76998a3b"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.20.1/cog-linux-x86_64.tar.gz"
      sha256 "2013f2256959a6b8ee6be875a682392972b3a2e362b2bc2ef6e216ed139c0d7d"
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
