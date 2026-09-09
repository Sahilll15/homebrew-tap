class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "e89e665d541d9bcb53a93f1ee872c249bad608e0e54caa46f6b0886ad1b7836c"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.11.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "4d8ebc9acccff574df49f40383aac72c3f78df931a2f27831a0a069b7f6cd7ef"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
