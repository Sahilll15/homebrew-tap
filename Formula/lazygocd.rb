class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "2f35007549f404c0462da032ee81177fb47cb72a2efe875b8e5706c6d23e43a9"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.5.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "7b9688cf9af23e501beddd2db755276d52ac03a73136df8916df846bb121ba5a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
