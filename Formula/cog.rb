class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.22.0/cog-darwin-arm64.tar.gz"
      sha256 "9c0ffa730d1c1389858f963cc42c6724613b2af554169297b4f0b5a8361c1859"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.22.0/cog-linux-arm64.tar.gz"
      sha256 "c73d62c613134a92b7630ff2c7a79e77519224d2866dbcbf5bdb591b2f605b1c"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.22.0/cog-linux-x86_64.tar.gz"
      sha256 "18a08ef245143e5d4e41256179f472dc2222b5d926fff9c8ecb2a27f23b1fa59"
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
