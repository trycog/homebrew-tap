class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.6.0/cog-darwin-arm64.tar.gz"
      sha256 "56aa21e1253a7054cfbc8e289d5e2343c9381df5b0e2639650f774ba5bdb1d27"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.6.0/cog-darwin-x86_64.tar.gz"
      sha256 "33002b872366ea0ba4ce5a35bfe5c1f334c304e3bef15ebe7531d1c9808335ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.6.0/cog-linux-arm64.tar.gz"
      sha256 "f5c170ce22a12e03a57cd7f250dc958980cd185f4384207212eccc71e0593c4b"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.6.0/cog-linux-x86_64.tar.gz"
      sha256 "623014495b94dfbcf3e7fb60f5ea5e3ec431dbdd26073728b18268d95eacfb81"
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
