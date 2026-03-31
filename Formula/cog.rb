class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.24.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.24.2/cog-darwin-arm64.tar.gz"
      sha256 "7bc48e698c38145f65431417f402894f8382d0710a0114e50270a805f62fe379"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.24.2/cog-linux-arm64.tar.gz"
      sha256 "99de4ada546162e482975f15f43f0ff01e1466e1ef8b59a141b7d3290603ca81"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.24.2/cog-linux-x86_64.tar.gz"
      sha256 "77b2a212e25fe31c9cde932fc6a96abdbff9448efed5a4d08bc14dd3a1d2bbb5"
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
