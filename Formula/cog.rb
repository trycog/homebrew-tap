class Cog < Formula
  desc "Tools for AI coding"
  homepage "https://github.com/trycog/cog-cli"
  url "https://github.com/trycog/cog-cli/archive/5988e1fe76bac04c1886a5f2e0ecc5cc94f7efdf.tar.gz"
  version "2026.02.17.5988e1f"
  sha256 "0a2178fe3a1a1db6d4ce6bd0adada30da015c11bd778ae8278f15cc051b7e13c"
  license "MIT"

  head "https://github.com/trycog/cog-cli.git", branch: "main"

  depends_on "zig" => :build

  def install
    system "zig", "build", "-Doptimize=ReleaseSafe"
    bin.install "zig-out/bin/cog"
  end

  test do
    output = shell_output("#{bin}/cog --help 2>&1")
    assert_match "Tools for AI coding", output
    assert_match "Usage:", output
  end
end
