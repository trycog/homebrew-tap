class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.23.0/cog-darwin-arm64.tar.gz"
      sha256 "1228def60f85227eb8c01a07476544cff02b998f7b27ae05f2865ef0d4e634f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.23.0/cog-linux-arm64.tar.gz"
      sha256 "2e703aa1623a4757be44861cce13582d1ecd57daf81cbcc639ab2442da58a183"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.23.0/cog-linux-x86_64.tar.gz"
      sha256 "382d7be2231f1747c7417b9fb23f7860157aa14e3f95c05a2561e294fda9af01"
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
