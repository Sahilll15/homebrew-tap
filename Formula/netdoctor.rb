class Netdoctor < Formula
  desc "Network health-check CLI that walks the DevOps debugging ladder and grades each host"
  homepage "https://github.com/Sahilll15/netdoctor"
  version "0.1.1"
  license "MIT"

  on_macos do
    # Apple Silicon. Intel Macs: use `pip install netdoctor` (an Intel bottle
    # can be added on a future release).
    on_arm do
      url "https://github.com/Sahilll15/netdoctor/releases/download/v#{version}/netdoctor-macos-arm64"
      sha256 "c5cc8da6e14b2d9d5e0d405b082bce3187b36c0c7d335cd75881ebb7168fba86"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Sahilll15/netdoctor/releases/download/v#{version}/netdoctor-linux-x86_64"
      sha256 "aae0ae4fc2920ad145f2214aab91b82ee6a38595b5f48ba571b86e5514e63c0c"
    end
  end

  def install
    bin.install Dir["netdoctor*"].first => "netdoctor"
  end

  test do
    assert_match "netdoctor", shell_output("#{bin}/netdoctor --version")
  end
end
