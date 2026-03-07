class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.3/cog-darwin-arm64.tar.gz"
      sha256 "e48d7ed9dc9d968637ff88195e3731a63aa4460ba13c0c7e11c146078db5fba3"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.3/cog-darwin-x86_64.tar.gz"
      sha256 "522487ea3ca472f02cea1cf9522074c49704ac4b944ca9791864b8dcdd6bf478"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.3/cog-linux-arm64.tar.gz"
      sha256 "2a9025fdace8fb4333ab5a924722c013eefcc81a30d1c520107454d3453c1903"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.3/cog-linux-x86_64.tar.gz"
      sha256 "ec55d678969dd41d1643b0cf7c07de5045bdbdaac9d06027fd28393f302ed732"
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
