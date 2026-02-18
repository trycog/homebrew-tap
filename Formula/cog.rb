class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.2.2/cog-darwin-arm64.tar.gz"
      sha256 "5d4f4d0c9ad2ea129dbf040ea536c4a02b2890386e93fee1e993174415ee4a06"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.2.2/cog-darwin-x86_64.tar.gz"
      sha256 "1f236c9ab54dcc606deda597b800077204f7899591557e193604d3711463066b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.2.2/cog-linux-arm64.tar.gz"
      sha256 "05b92e82441a4fc45c9abba6ab204b908af71219da512270cfce59aa9a598b83"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.2.2/cog-linux-x86_64.tar.gz"
      sha256 "606e03e6d21ea6c78775fccc9de7f1bdf03c43b42fe3af6c6e84c67fe8c2fee7"
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
