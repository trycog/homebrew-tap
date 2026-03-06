class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.1/cog-darwin-arm64.tar.gz"
      sha256 "71729dca751a206c05d8bf4d004f42cfe3c2bfe108a5f0038eb81b5f91f161f6"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.1/cog-darwin-x86_64.tar.gz"
      sha256 "f6713306fd3f50b3cbeaa6b508d6597ff4454cf788cde21c5cc6ae0f12e205f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.1/cog-linux-arm64.tar.gz"
      sha256 "de457553ff7b168276dbe8049b2ac782fc83a237965e5a709fee4f4617a9f4c2"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.1/cog-linux-x86_64.tar.gz"
      sha256 "55def037b198c157497cca482f329c152faf96a6e4fed9cddb15d92f906bf95c"
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
