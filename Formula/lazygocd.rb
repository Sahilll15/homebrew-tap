class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "fdcb524488ce057ca2f39b56fe0bd80249982527d991f6619dee14fcd0953a86"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"lazygocd", :exist?
  end
end
