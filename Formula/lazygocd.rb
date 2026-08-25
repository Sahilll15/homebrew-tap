class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.10.2.tar.gz"
  sha256 "fbf4140a0a07fbb84eb4f3d92a42c2bac32a695bf3b6e917af5fc4f8acd4dc51"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.10.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "fa8780fc4903e26a53e46dc69f56ae19f3fa20699d0ea490932738e27ec322ed"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
