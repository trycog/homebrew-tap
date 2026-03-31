class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.25.0/cog-darwin-arm64.tar.gz"
      sha256 "0c57a7613b7ab381c1b309e4cc9cff785a257c8b40f00a350550dce5df4ed2e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.25.0/cog-linux-arm64.tar.gz"
      sha256 "8c7c698573945429b41163761bd772cec2e17107e82f93f3cef0ae1cefa98c94"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.25.0/cog-linux-x86_64.tar.gz"
      sha256 "a9bce3ac5ccc2c82a48b2131451ea6a42e8842ccd57246e53bcc7cda6521f7c7"
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
