class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.20.0/cog-darwin-arm64.tar.gz"
      sha256 "93a1ec4d04bafcc55db93f56b2d0fbed7fb13c73e3dd79452284b7aa37db959c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.20.0/cog-linux-arm64.tar.gz"
      sha256 "142f80ead51df3bb40f0cd2cf3c20f459c07ea0461f4850a1f0c6e58e64e80aa"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.20.0/cog-linux-x86_64.tar.gz"
      sha256 "b6cb8bd959edbc6e40b1687cf823005ad26a0c989a2aefe943ec58e75e9e88e6"
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
