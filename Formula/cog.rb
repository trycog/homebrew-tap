class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.17.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.17.2/cog-darwin-arm64.tar.gz"
      sha256 "096a1ef7e641a5ac72e88f5d96710690f993ab1d1b222a3b7bee9097d7d7a066"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.17.2/cog-linux-arm64.tar.gz"
      sha256 "213bf0f09e938856f1e46261c4590e146c875f55023e868bef46dd053a604329"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.17.2/cog-linux-x86_64.tar.gz"
      sha256 "40a9903d94e57217be891fdb6dc0d23423948f03fec1d5947d57fe7a03ebd7cb"
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
