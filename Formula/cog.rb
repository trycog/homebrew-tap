class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.27.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.27.4/cog-darwin-arm64.tar.gz"
      sha256 "d47e869b4288097d0f1c9c6d288846c0506c887775873f544e837c491b8d1091"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.27.4/cog-linux-arm64.tar.gz"
      sha256 "9f6dfd59b083d0c8c19cf6a20b8121df0a9755d606808ab2b7a858c16b53d7e6"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.27.4/cog-linux-x86_64.tar.gz"
      sha256 "51edca5385f64ba8f77d1fc81d26a8a0988028e77f419b13d170df218a2701f0"
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
