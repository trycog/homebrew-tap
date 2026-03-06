class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.6.1/cog-darwin-arm64.tar.gz"
      sha256 "32c179350b49f60d2ce4208eb2b893e803fab11d049c306c5721e118205ccb30"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.6.1/cog-darwin-x86_64.tar.gz"
      sha256 "55d6f396038e599a85fa2f2ced15ddd946def3eb012dee821b0f972b3cb8c7b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.6.1/cog-linux-arm64.tar.gz"
      sha256 "5f33763d7bb05ce0693b297dc97af620f9b2d18fe325ddba52c21365a27aa1fd"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.6.1/cog-linux-x86_64.tar.gz"
      sha256 "ead5ef2f2eea2a1468bca5740b1baec5f7878c19ee5de07d79d56bb90b4f3536"
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
