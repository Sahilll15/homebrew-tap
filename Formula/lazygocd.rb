class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "8285a7abccc0e44a6d2d68702acf1926a30a70297664a1fa491dab3cecbbb4ef"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.10.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "72b9078be96e8ab4d755dbb2e193c9017c8242eae1d62cd2ea0b6d3675e2f186"
  end








  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
