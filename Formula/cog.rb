class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.17.1/cog-darwin-arm64.tar.gz"
      sha256 "19ed59d900d0092c63e517ada0c78008de59f2bb8403b492ac5497ea694d502f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.17.1/cog-linux-arm64.tar.gz"
      sha256 "1374e9ee8e7fd80fd2c0567ea0d98c551f00027cb5c3c27627c4f45f56e9d71f"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.17.1/cog-linux-x86_64.tar.gz"
      sha256 "ea582ec7b5aee94821f763c2391ca67c6f72308fb069fb1d29cae5473ae54b4a"
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
