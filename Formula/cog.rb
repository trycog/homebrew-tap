class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.0/cog-darwin-arm64.tar.gz"
      sha256 "d61a57ec5ac4c6421337424f16ef90aa70dc87c14e15aedffe155814a526f17a"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.0/cog-darwin-x86_64.tar.gz"
      sha256 "e5326d41026e8cd6eca6c7a4bea5e46926d40dabfe33fab6cd26854f302eccaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.0/cog-linux-arm64.tar.gz"
      sha256 "4c925d731d23ec6f4333e5746dc4b6427f5a6c08dcf5ae3d187c02c1a468472d"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.7.0/cog-linux-x86_64.tar.gz"
      sha256 "027bd7090e53bff9cbaf67ee27d92718e78238a67e4eac04d055d00e4d07056a"
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
