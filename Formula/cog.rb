class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.22.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.22.1/cog-darwin-arm64.tar.gz"
      sha256 "8dc37e0ed3aaaf7a2be42ef58e9ec0200cf4c21ef7158c9b082e05441ca428ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.22.1/cog-linux-arm64.tar.gz"
      sha256 "0e39bfaa49295af5ff7292168fbb1b23db3e76aaa746c767d51f81741de9fcf5"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.22.1/cog-linux-x86_64.tar.gz"
      sha256 "113fac3578ac52b1d2851d60c6a76e99e817c9c5dcc46cc971039d4ebe74d39c"
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
