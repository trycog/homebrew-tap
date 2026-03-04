class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.5.0/cog-darwin-arm64.tar.gz"
      sha256 "d851c021aa9d71b10107010bcaf7b7d96914c78875dad1f0c998c3740a274f69"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.5.0/cog-darwin-x86_64.tar.gz"
      sha256 "2be24afda955a62f7e623d74b679b9a0c73c2e769199950792a2ff770d9d88e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.5.0/cog-linux-arm64.tar.gz"
      sha256 "d66c2cbe6a62522edc4c154e406967b81f1420740a12676aa38b47fdf1b6115b"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.5.0/cog-linux-x86_64.tar.gz"
      sha256 "d885f213a0a500deb09c2c57c39a18db899d145f81d023ae3ac6618e23ee860b"
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
