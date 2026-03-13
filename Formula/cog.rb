class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.17.0/cog-darwin-arm64.tar.gz"
      sha256 "0be9698d1b15ef2a00b51b213639ddbe2a669db717d6a770d042ca0da63fe385"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.17.0/cog-linux-arm64.tar.gz"
      sha256 "9212e8c9ed25c4620f6bc4c79d61151ef39c957cb2ca71eb58a13efd07d4b280"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.17.0/cog-linux-x86_64.tar.gz"
      sha256 "0de3bd59510f56cd73de41c03218e549acd334e025e89ddec664e072996486b4"
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
