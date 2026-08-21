class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sahilll15/lazygocd/releases/download/v0.3.0/lazygocd-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "50df68f38f041dd04529990215f3e93a4635f1cb73a7781ec17c5894be27a441"
    else
      url "https://github.com/Sahilll15/lazygocd/releases/download/v0.3.0/lazygocd-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "7289f5f71dca4e52c179d66fce5eb57ebd41d64ebd3b660c66ac69239df16d4e"
    end
  end

  on_linux do
    url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.3.0.tar.gz"
    sha256 "0901cf6724abf08cc004331924e6e3213e2e81f99425f3ddbbf6610d40b56b23"
    depends_on "rust" => :build
  end

  def install
    if OS.mac?
      bin.install "lazygocd"
    else
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
