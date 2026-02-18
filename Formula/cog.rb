class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.0.1/cog-darwin-arm64.tar.gz"
      sha256 "46f7851f8de0184ce3f61d54580ceb8ec3d8b1a209cba7540aa50eca1f19e006"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.0.1/cog-darwin-x86_64.tar.gz"
      sha256 "de52f60dc99d6316b97259d3e51a88b1db5f97ef175cd5e07103301987983cb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.0.1/cog-linux-arm64.tar.gz"
      sha256 "880fd6269b9d7bb9ccf481daa2186e10edba89987a1d4e23362150bcf9fa001f"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.0.1/cog-linux-x86_64.tar.gz"
      sha256 "9c35056f4ddb112722ed38636bf1d61fab48700cc685388c334e9ea9d7d7d537"
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
