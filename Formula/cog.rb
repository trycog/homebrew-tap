class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.4.0/cog-darwin-arm64.tar.gz"
      sha256 "8ce0555875bb0b8af4bd98c298f11c7febce7b4bbf14b0aaff1836f49c99651c"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.4.0/cog-darwin-x86_64.tar.gz"
      sha256 "401a06a3b5cb45dda1b4f3adac26d6b6e5e50956bab9b974f263ade0d2f36cb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.4.0/cog-linux-arm64.tar.gz"
      sha256 "96370697da6fb1c0d970f50ea58f0365ed98c8cadaf49849b117cd763e3c7c24"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.4.0/cog-linux-x86_64.tar.gz"
      sha256 "ff9251e6a3379386ef8207ac08301582c1e39e7cf2b19d3bac9fa51019481dcb"
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
