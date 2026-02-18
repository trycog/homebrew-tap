class Cog < Formula
  desc "Memory, code intelligence, and debugging for AI agents"
  homepage "https://github.com/trycog/cog-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.1.0/cog-darwin-arm64.tar.gz"
      sha256 "45c630018d38e8d86343c70df6dddbe65420089c5647f27f49a125fad9209972"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.1.0/cog-darwin-x86_64.tar.gz"
      sha256 "1ac45e4f69d86373d3aefa2fe3f7809594e2453617370c86be250453f55434ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trycog/cog-cli/releases/download/v0.1.0/cog-linux-arm64.tar.gz"
      sha256 "e6cb56ac96dd07418fc2bc1c813bd2b82b311152f345c4e56938c28911da8d40"
    end
    on_intel do
      url "https://github.com/trycog/cog-cli/releases/download/v0.1.0/cog-linux-x86_64.tar.gz"
      sha256 "5268027e74a91430ccba2e31551a6043be4bafb52c6e68893edd65778cf87d70"
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
