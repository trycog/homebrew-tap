class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.16.0/cog-darwin-arm64.tar.gz"
      sha256 "431d88bfe93abf3049a996a78d50b5ce5bc928f6f6b29f8c9a8517708211e144"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.16.0/cog-linux-arm64.tar.gz"
      sha256 "dd7c9fce2319198b638e574a529cf56394cc2b56d0bd7b280294a6067f60ab6b"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.16.0/cog-linux-x86_64.tar.gz"
      sha256 "79d06e05ffea7b1bcea1924d154e0754b8bd2b5709b5309b8f69232d5e99c4df"
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
