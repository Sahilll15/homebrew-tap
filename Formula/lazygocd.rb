class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "d7764f84d1a06688a233da18a30f8b2aa63b9070f8bb9ccb079a701c49b3a583"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.9.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "49acde4a8d2f0b3e78eb1745b44552559f1fb90f9b04de930b47b9d0fc7ddb0e"
  end







  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
