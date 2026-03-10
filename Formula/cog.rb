class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.10.0/cog-darwin-arm64.tar.gz"
      sha256 "e2dc0b57fe5f244398037854b95f8950fb3512bb15e25137156ae5a9e6b6e8c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.10.0/cog-linux-arm64.tar.gz"
      sha256 "ffdf2b030fa02c8261c74eb54b410b2a94483354739c85a3e91cebe55ffd6fa3"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.10.0/cog-linux-x86_64.tar.gz"
      sha256 "9a8ca8002a6fab43ecded004ef3fbb3916d433fc151d7d74e1ea7704b2289a3f"
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
