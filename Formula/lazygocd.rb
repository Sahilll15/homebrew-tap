class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "a19dba475f27b15d2de112c9b6910354f725fedab6f8689d69d5ed95c7497d3d"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.6.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "7a556d0afd021032fc1ba8f5b82c75eba43255c6fac967389e12001b985c3b84"
  end


  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
