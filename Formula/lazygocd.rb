class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "0901cf6724abf08cc004331924e6e3213e2e81f99425f3ddbbf6610d40b56b23"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.3.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "49d42926ae2bf38231194ad16b2484f4786ef67e7a667a6bd98c3531fdaf07d9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
