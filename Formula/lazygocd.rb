class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "5ca6f0c5c7fe7ce81011f64f25443b41d750fa3312471923dade4e778ee9cf12"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"lazygocd", :exist?
  end
end
