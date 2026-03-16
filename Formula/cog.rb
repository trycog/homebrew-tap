class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.18.0/cog-darwin-arm64.tar.gz"
      sha256 "d27355121adc32ccbac784ae37fc0f193ffcbefc8849183cf76b7aa3c635e8b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.18.0/cog-linux-arm64.tar.gz"
      sha256 "8ec2146d5400acab267b12012a476edb632ee3708af68ef12b73dc47ebfb5d91"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.18.0/cog-linux-x86_64.tar.gz"
      sha256 "558e31b71f3d1840b349b01eb397af2c7b18c7144e735ee30e9c934e3636bcce"
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
