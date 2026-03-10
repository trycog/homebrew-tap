class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.11.0/cog-darwin-arm64.tar.gz"
      sha256 "c167d55bd6e72f6608ff971c43035532632a82fe25ee4ab54e764aaf05a7f1e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.11.0/cog-linux-arm64.tar.gz"
      sha256 "9115428e23c2e9b859111201b4a9d791c1d5621d6334a99dd39c8f70dde5d86d"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.11.0/cog-linux-x86_64.tar.gz"
      sha256 "23e41eef24e462511f6656909d53d965228b7a8e83a4b24b818da8d53fa0d1ec"
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
