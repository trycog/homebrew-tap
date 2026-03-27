class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.24.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.24.1/cog-darwin-arm64.tar.gz"
      sha256 "a3f0368555372739a5cf1e516c62c50a97c602085c2c64c3f019be6d54793a44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.24.1/cog-linux-arm64.tar.gz"
      sha256 "15722e15bd04be67e1927786a8f2f1516587eb8c8714bd8f62863e14f016ce70"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.24.1/cog-linux-x86_64.tar.gz"
      sha256 "fe2a04b8ce7c177a693b4c257399f0ed9347ba7a3078e5cbfc675aeb9af4220e"
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
