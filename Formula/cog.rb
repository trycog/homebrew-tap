class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.21.0/cog-darwin-arm64.tar.gz"
      sha256 "9148a1a40fa48eb0edd7cb789e42d65b6c91cf3efa0340afc44e0d35a95d2c7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.21.0/cog-linux-arm64.tar.gz"
      sha256 "44f7a8744520424e8e1efd603fc3e29b7323d37c4dff51068d3842efe8e2ca2a"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.21.0/cog-linux-x86_64.tar.gz"
      sha256 "dfe57280d9e3f6611a0050c0269d4abc33b21a095e7383110657a36dc6e9e2b2"
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
