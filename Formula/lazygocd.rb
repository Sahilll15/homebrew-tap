class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.10.3.tar.gz"
  sha256 "d647e6da24ff520132bbeb778af6157a1c141abd40bd6f5a909d6e1f6aff718c"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.10.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "57f065486b40efc4250ab0ab0bbf7778e6ba77309f9b3ed27baeeed75d56d8e8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
