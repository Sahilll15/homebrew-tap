class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.8.1.tar.gz"
  sha256 "9f0f20806bd016d2afc302852ecbb91a0772cd5e7bc057d2ade2395e457b8ff9"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.8.1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "abe60e8ec3fb9a59d27f71367c332447ad61e57801705a0147c8a78b998057e6"
  end






  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
