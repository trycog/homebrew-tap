class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.2/cog-darwin-arm64.tar.gz"
      sha256 "4877a430b6a12f8a71303bf6274da56bc7495c343c55c3c66e570c0f06ef0742"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.2/cog-darwin-x86_64.tar.gz"
      sha256 "46e4190da09242ceaef464da4781cd1e11ef2439b09f33ee4d3a6130fe223fbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.2/cog-linux-arm64.tar.gz"
      sha256 "07c72a3010f429ee9b2502e71bd8a7062ca59741f3b666080f10542db8fbf449"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.2/cog-linux-x86_64.tar.gz"
      sha256 "fea680b565a673b42d83a0cbf4b20480c3eb175a350a926d9a36c033981fa44f"
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
