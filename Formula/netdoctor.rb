class Netdoctor < Formula
  desc "Network health-check CLI that walks the DevOps debugging ladder and grades each host"
  homepage "https://github.com/Sahilll15/netdoctor"
  version "0.1.0"
  license "MIT"

  on_macos do
    # Apple Silicon. Intel Macs: use `pip install netdoctor` (an Intel bottle
    # can be added on a future release).
    on_arm do
      url "https://github.com/Sahilll15/netdoctor/releases/download/v#{version}/netdoctor-macos-arm64"
      sha256 "24c26d461d488e7d6f01f68b9fad64eed0c1c9711a8e1300f36ceb3f993dbf7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Sahilll15/netdoctor/releases/download/v#{version}/netdoctor-linux-x86_64"
      sha256 "ea3e2017fe869147b97695a3f7b37a08ea4d32feef2255603fb001f6c1304111"
    end
  end

  def install
    bin.install Dir["netdoctor*"].first => "netdoctor"
  end

  test do
    assert_match "netdoctor", shell_output("#{bin}/netdoctor --version")
  end
end
