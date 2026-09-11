class Lazygocd < Formula
  desc "Fast, keyboard-driven terminal UI for GoCD"
  homepage "https://github.com/Sahilll15/lazygocd"
  url "https://github.com/Sahilll15/lazygocd/archive/refs/tags/v0.12.0.tar.gz"
  sha256 "757c4fc100c7efd349a609b85cd0f81a07524106fb556f4c29d415c5940a8977"
  license "MIT"

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
