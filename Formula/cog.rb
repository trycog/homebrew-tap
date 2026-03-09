class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.9.0/cog-darwin-arm64.tar.gz"
      sha256 "c44b8610c59cabecb5696b88b05ac16abba29d63d51aade7905f0c9fd1326247"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.9.0/cog-linux-arm64.tar.gz"
      sha256 "7f7eb21cdc8ead0e766746ececa3898a6d8a43e8b8a18d03a71648eab4434ba5"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.9.0/cog-linux-x86_64.tar.gz"
      sha256 "7e0f444e5db306a69e7dc71835e8114be4e0c9d6876ffdb0d620297c0f0fbe6b"
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
