class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.15.0/cog-darwin-arm64.tar.gz"
      sha256 "0b8fcea58c4575115e0820258926e8b8ad13a055289eaa6682fbc577a1acec52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.15.0/cog-linux-arm64.tar.gz"
      sha256 "10b1dd315611c38b7eaad363cd1bd7cd89886ccf7dda23143f8e617c17b443e0"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.15.0/cog-linux-x86_64.tar.gz"
      sha256 "9f23f98d13e361093255dc3c70b171ff1b7395cc6dfa6eb6d792a0bcb359207a"
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
