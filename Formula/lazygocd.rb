class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "fea9cd351a3a4cf98ec5821d6f3ef01e325c29763c2fc2da6bcc78bbeb365ee7"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.6.1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "3ceca8eb9e4708fae71190455bea0f03b49fa7083a43de66dd5f2e31e47b1d60"
  end



  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
