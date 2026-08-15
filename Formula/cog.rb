class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.27.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.27.2/cog-darwin-arm64.tar.gz"
      sha256 "2f6746b1b3d4700476015f2546c5c63eeaf1eb5719e4e82340041b71a8ceccfc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.27.2/cog-linux-arm64.tar.gz"
      sha256 "73be3abac39762d3c7ba96cfec5ee39d8e3f733ec64acb36e5d08600a92aea11"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.27.2/cog-linux-x86_64.tar.gz"
      sha256 "fc738cc814a251efa5826bc33d74372e65e32ea9475553398e93236b498fae82"
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
