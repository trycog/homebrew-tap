class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.12.0/cog-darwin-arm64.tar.gz"
      sha256 "0cd1d86bb0d479a7eb4f7faf6fabd747df84ff24d2349102f984fe0d8e1d8ac1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.12.0/cog-linux-arm64.tar.gz"
      sha256 "caa7a57afebbe32fdd10132ae327d82088e12944dadd5824d87c2fa148d2ac90"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.12.0/cog-linux-x86_64.tar.gz"
      sha256 "74d47b10bf89feb02e5bc8e1414cc51b231d3958bc2c928505971539fa8c03c4"
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
