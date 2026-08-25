class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.10.4.tar.gz"
  sha256 "8c9ccc50f2fdc474e102185d7ed27128fa89e388cf7f44a610e7bcbf5ac338ca"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.10.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "1bf3bd1b6f03b856b5668496b5e89cdb93cf493aefd4eccdb5804743b85622b5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
