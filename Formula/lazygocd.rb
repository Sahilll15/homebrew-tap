class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "375c094fd735e16035facc400d6f4a38174219dedfbeefb6a85f670fcd33c2aa"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.8.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "cdee8ccdee49182a89b4b8ddbc19b698f9ec0273eed212a2e583cfaaa9a8d4e8"
  end





  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
