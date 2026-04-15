class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.26.0/cog-darwin-arm64.tar.gz"
      sha256 "31052849356c0eba10ce29d4c28e1e86f16b29780a3000695405dfc64dbce9e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.26.0/cog-linux-arm64.tar.gz"
      sha256 "d76e4e6ec55e61586221bc04bcae28f25a62b0d5d7d9b116bd4ec88e4f116b31"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.26.0/cog-linux-x86_64.tar.gz"
      sha256 "f97875bceed9160d97f6edc0252f66c7e3beea846bbaa06c630a73757e0168ab"
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
