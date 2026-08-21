class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "9ae62878e91eeb2278ad07f190491f217fb9a577e9301385e0eefce84bf3b2d0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"lazygocd", :exist?
  end
end
