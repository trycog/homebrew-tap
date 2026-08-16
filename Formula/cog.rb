class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.27.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.27.3/cog-darwin-arm64.tar.gz"
      sha256 "0035af63993da1450f4eef4a3064074386b0900435e9a883775cf2717501e7b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.27.3/cog-linux-arm64.tar.gz"
      sha256 "eedffaf3fbd07578799aecd2e9082b81be2907db8410b07917c2a8eb4c02b3bc"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.27.3/cog-linux-x86_64.tar.gz"
      sha256 "52bf083e1ed286e15c18f76ce39d83d7369f5128768cae1adf0e1f697eacacba"
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
