class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.23.1/cog-darwin-arm64.tar.gz"
      sha256 "7fbade25e122496a234dcc51a88c015f4e47287ee7ca7790d9713d350a1c01c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.23.1/cog-linux-arm64.tar.gz"
      sha256 "d16884bf618dcf774a5ed526be9a1cba53cd5ac9dfdee3f78ecda50daf7a73c6"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.23.1/cog-linux-x86_64.tar.gz"
      sha256 "6c7f35d8d2f5445a7a3998be6329993f476aa4ec2327dfdd9b83093f96ef9668"
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
