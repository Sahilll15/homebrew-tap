class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.10.7.tar.gz"
  sha256 "9a3f0dab521f6d261afcb4cd11890fb0d63cc78ec7325005a74c1b84ed068335"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.10.7"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "d87ae9edc31d97e13486a00b9bdf2c4715879efb53d0299c7dbcbd0a8b06cb93"
  end




  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
