class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.3.0/cog-darwin-arm64.tar.gz"
      sha256 "2e35df07a26002183740c24ec4e9b251356bddc6f7a5ca2a460ba48389223f26"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.3.0/cog-darwin-x86_64.tar.gz"
      sha256 "8041d1f1429a5b2dcf42ce01f330082b9c9a9c41ab29b3837944cbac7622622c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.3.0/cog-linux-arm64.tar.gz"
      sha256 "370c06727c913cb262a7da6f85e995b99f0f6489540a54fd3254b6785e23b420"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.3.0/cog-linux-x86_64.tar.gz"
      sha256 "35fe95de6c6468072a136e5b3eac6b697d6f12fef2e21776b881b9d7a5a360ba"
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
