class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.27.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.27.1/cog-darwin-arm64.tar.gz"
      sha256 "fc9fa830c306436ae2dc7e6372711bf4e35cb416404051dd41626ca9d16886d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.27.1/cog-linux-arm64.tar.gz"
      sha256 "ba1e00e42f2a265aaa05d82ffe6fa6c78dda84b238dfa8919ffef58b3d433206"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.27.1/cog-linux-x86_64.tar.gz"
      sha256 "7a789a28a3a14b4486c1b4c3c53ce44b162a6c1e282967c54039086c6a2a77aa"
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
