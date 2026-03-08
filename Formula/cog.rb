class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.8.0/cog-darwin-arm64.tar.gz"
      sha256 "d7d6a4c6a5e8108ad4f6100b819e2d38b6568757110f3ad50de22251b7ed6170"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.8.0/cog-darwin-x86_64.tar.gz"
      sha256 "f57787aeb45e4989dfe8de01944f7899f54a97950b17abaf2a847c4289b33b4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.8.0/cog-linux-arm64.tar.gz"
      sha256 "4f491b23d875b2a2c04fc3e44b15831c2e9039093fef6c48393da0af54d33c92"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.8.0/cog-linux-x86_64.tar.gz"
      sha256 "b2c0e12fc9be9f972f917621a071819ef01162c183431fe9a492a11aba01a9f2"
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
