class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.10.6.tar.gz"
  sha256 "7ce6db608aace17932d9b30364b6d7f4ddde38d7659d8215c348d3f6b0db0309"
  license "MIT"

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.10.6"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "44a671d6bf55b7c6e9c5a263abc0f0ca8a2cb0e3e4b90e4aad2ed4ba9ce45965"
  end



  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
