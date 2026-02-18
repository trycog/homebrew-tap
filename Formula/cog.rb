class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.2.1/cog-darwin-arm64.tar.gz"
      sha256 "7fb2acd6741ae4904c0dd81e8a8ab2409a70f5f815103dc24454c4e38f81306c"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.2.1/cog-darwin-x86_64.tar.gz"
      sha256 "62ecd88167b9e12721adf83bd373b80e31b7ff735e91b3e9df3445aeb7ed7be5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.2.1/cog-linux-arm64.tar.gz"
      sha256 "225c9a628c2f69fef39fa5f8773c9cdf99e7b9a55d5e631e22c7310c021eeb59"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.2.1/cog-linux-x86_64.tar.gz"
      sha256 "f187973f8ae4e0d633cb5f309f8a89f4c372570a283f51dc9c82b0b5b013e0b6"
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
