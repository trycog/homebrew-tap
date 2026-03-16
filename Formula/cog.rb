class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.19.0/cog-darwin-arm64.tar.gz"
      sha256 "fe73108f00799ef16da219404cb2523a7fdf71a293de3308555b59e443a8eaf5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.19.0/cog-linux-arm64.tar.gz"
      sha256 "557a8c7360d09154adfc12acbab802fb8112afa451f4c2c818ad5f63e8b50801"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.19.0/cog-linux-x86_64.tar.gz"
      sha256 "f11fb62be064d5939e30955619579c07b4f3c237ba609db855c1a6d8c4904f14"
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
