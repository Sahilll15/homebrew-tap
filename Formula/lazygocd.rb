class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "f25a7ce83e234825c99f713155fe9e5178126d43aa8b3850fa7612c7531b9a2b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"lazygocd", :exist?
  end
end
