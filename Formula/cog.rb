class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.10.2/cog-darwin-arm64.tar.gz"
      sha256 "c07a11e0ec3b04c1abe6288f77511bc2f5239c95fe3a62bd4568f0b96ba8b2d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.10.2/cog-linux-arm64.tar.gz"
      sha256 "eabc39a70ef2459ad2b4ccbbe70212cd6857956b7ac4eae8c5522f277f413eba"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.10.2/cog-linux-x86_64.tar.gz"
      sha256 "93aefbc29492f007d4b846ee90f85a328068bc179789e93147793b497fc3b58e"
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
