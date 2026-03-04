class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.5.1/cog-darwin-arm64.tar.gz"
      sha256 "a33c5ee43fbfa937cf9bcd69a9627af253ff2c815bc85e9f250b438444e31111"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.5.1/cog-darwin-x86_64.tar.gz"
      sha256 "6f4f7a3ef6d2eb5e37701462d457cada6414f63042875edb2e0d583b3c180aff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.5.1/cog-linux-arm64.tar.gz"
      sha256 "42324fa712f9b152a8b4fa31c4b08e035e9f327d61622c0ce0a0adf42552ecf7"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.5.1/cog-linux-x86_64.tar.gz"
      sha256 "081d272e5efa5af684f444b9089f1a7a10a55e53c07ff03350bbfd302e23d244"
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
