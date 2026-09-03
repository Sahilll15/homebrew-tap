class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.10.8.tar.gz"
  sha256 "b6b956283b723f253dbe5045c9bcb2a5e44fff5485dd732677e1b9292dbc1b07"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.10.8"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "aa33f8b1f9bc15a07448be6235df71713d8f515e567914b22be8bd9f3435c7f4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
