class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "64169f75a9d2b451e46ac2a7550f160375b49383d6c6160eb0984474d7d4c151"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"lazygocd", :exist?
  end
end
