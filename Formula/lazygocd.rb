class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.10.1.tar.gz"
  sha256 "eaa7b0c801310a2c4b25a5ebdba279a50c8f4fb7e6d71727324ac836b680782a"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.10.1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "64afc578e14f955ff02dbf5a02141f6f9ddc603e15661d0a92b53318704dfdad"
  end









  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
