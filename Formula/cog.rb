class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.24.0/cog-darwin-arm64.tar.gz"
      sha256 "60d38d1d198f183849785fbbadc5a6ae3aa4b58a62e1be9b2e5f8cec81050ed5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.24.0/cog-linux-arm64.tar.gz"
      sha256 "9034dc3a1c9925af27eef85b41b7649c054c7b03b3098b155e76f109766629cb"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.24.0/cog-linux-x86_64.tar.gz"
      sha256 "f4a6bbacf2255ad2d5c5183dc8d402373d7a004e23d3319fd935bbc415eb92c3"
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
