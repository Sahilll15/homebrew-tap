class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.10.5.tar.gz"
  sha256 "386e2ab0995369155b75f2d21cd2d7624c10aafbb1811974deb64063433a3973"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.10.5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "312fadc49c95dd363e0e9ef18ed513cef7365d0603ad0907c46550cad43951d8"
  end


  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
