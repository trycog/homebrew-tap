class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.18.1/cog-darwin-arm64.tar.gz"
      sha256 "800659b494e524c151348866516a481b356ddd4193ed99495b39934f24618d04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.18.1/cog-linux-arm64.tar.gz"
      sha256 "b48fa60408d4c961a57344875d7b56ddda36b58019b2295907e5693f8992fddd"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.18.1/cog-linux-x86_64.tar.gz"
      sha256 "b85ed0301132b8e87e6c6237752596b16ab554ef7adb15346496d8898de0fed3"
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
