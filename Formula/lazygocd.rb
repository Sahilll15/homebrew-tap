class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "cc1573880e56ca3f2b863c3a3a6dd7910a4cf84b12a65bc748b259569cc791ba"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.7.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "c199dedbd5adc27df483a34af1b7e09734085a506fe961f910646be806eba36b"
  end




  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
