class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.8.2/cog-darwin-arm64.tar.gz"
      sha256 "410261ed112ee867dc8561be099d27bd9cd3a91be2925de9a36dbd32a41e0f06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.8.2/cog-linux-arm64.tar.gz"
      sha256 "38c056070286c51ffe116731dfa2e4e2dd4cdf0f5f8c9df08fa08c9ea1537d47"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.8.2/cog-linux-x86_64.tar.gz"
      sha256 "34b3136edd1e3543bd910a04d2a7440a6d31c7046576698db53ea00e09807a2e"
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
