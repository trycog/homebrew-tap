class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.6.1/cog-darwin-arm64.tar.gz"
      sha256 "99061dd944c83a66fd269359d0a7ba36dc0caf5f6d31202ac3b6e8b73303c660"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.6.1/cog-darwin-x86_64.tar.gz"
      sha256 "55898857893def005be1253ef454ec5cde722c63d1bda51e3783bda40ef8a61c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.6.1/cog-linux-arm64.tar.gz"
      sha256 "5812ae46228beb6a914849477509818b952f169c1807776e6066360517ce686b"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.6.1/cog-linux-x86_64.tar.gz"
      sha256 "44740993ece9ac56f6c2715151a98802154e70823b0ee0292ec9a031682b6374"
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
