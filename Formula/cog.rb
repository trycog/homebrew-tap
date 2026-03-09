class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.9.1/cog-darwin-arm64.tar.gz"
      sha256 "85f64f78db6e7a10cb7d5c2d295124a12b0b8d65b6d7e578cd8ab688da13479d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.9.1/cog-linux-arm64.tar.gz"
      sha256 "c8bc2f263f4f734b82782fe4b68827f999f816bf15f50ba2e1a3bc47ede5444d"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.9.1/cog-linux-x86_64.tar.gz"
      sha256 "ee703de1eebc6d9dc77da3d6bdcf3b99e75311bdb69d6dd927a85d27db78fdf4"
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
