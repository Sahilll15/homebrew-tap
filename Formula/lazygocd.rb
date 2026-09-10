class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "e89e665d541d9bcb53a93f1ee872c249bad608e0e54caa46f6b0886ad1b7836c"
  license "MIT"
  # Formula-only change: the binary is identical, but the keg now ships shell
  # completions and the man page, so it needs a new bottle.
  revision 1

  bottle do
    root_url "https://github.com/Sahilll15/lazygocd/releases/download/v0.11.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "5288e573b454c6b85b0128b8d29e5b5bed49cb6e00d29155f5a289b7c94723ac"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    # Without this a brew install has no completion at all, and the README's
    # manual ~/.zfunc route is not on the default fpath.
    generate_completions_from_executable(bin/"lazygocd", "completions")
    (man1/"lazygocd.1").write Utils.safe_popen_read(bin/"lazygocd", "man")
  end

  test do
    assert_match "lazygocd", shell_output("#{bin}/lazygocd --version")
  end
end
