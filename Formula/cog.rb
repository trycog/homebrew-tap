class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.10.1/cog-darwin-arm64.tar.gz"
      sha256 "604986688b457e816c200220956f2f009274bfb9b97ab14ee580b2d06fff895b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.10.1/cog-linux-arm64.tar.gz"
      sha256 "b5d7e533e3f2b6b35a948374fd340bd2ee79e98ebc2404cf75ea2823f581bcb4"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.10.1/cog-linux-x86_64.tar.gz"
      sha256 "cea094a80f1be675d988904bffc040505426142fbdb2c4e4521a51ca05805217"
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
