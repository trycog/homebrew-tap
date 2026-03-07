class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.4/cog-darwin-arm64.tar.gz"
      sha256 "d7b06029845b724c5ccbe0ee9973883493d938869e56a1f7f2a319c326d144f0"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.4/cog-darwin-x86_64.tar.gz"
      sha256 "639cdc91c2f41d6d9c051539f32ec66bfe10770a2debba4a95ebf628da1bdbb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.4/cog-linux-arm64.tar.gz"
      sha256 "0cd96a6120a0bedfadb7b7693e72b4a3fc11bc83e254c151ed20db235b49e74c"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.4/cog-linux-x86_64.tar.gz"
      sha256 "e2156d0bd8646be791b13ebff405302f6f1e8a5c4b7cd13cafd8eff113c32c91"
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
