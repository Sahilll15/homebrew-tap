class Netdoctor < Formula
  desc "Network health-check CLI that walks the DevOps debugging ladder and grades each host"
  homepage "https://github.com/Sahilll15/netdoctor"
  version "0.1.0"
  license "MIT"

  # The sha256 values are filled in after a release by:
  #   scripts/update-brew-formula.sh <version> Formula/netdoctor.rb   (in the netdoctor repo)
  on_macos do
    on_arm do
      url "https://github.com/Sahilll15/netdoctor/releases/download/v#{version}/netdoctor-macos-arm64"
      sha256 "REPLACE_WITH_macos_arm64_SHA"
    end
    on_intel do
      url "https://github.com/Sahilll15/netdoctor/releases/download/v#{version}/netdoctor-macos-x86_64"
      sha256 "REPLACE_WITH_macos_x86_64_SHA"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Sahilll15/netdoctor/releases/download/v#{version}/netdoctor-linux-x86_64"
      sha256 "REPLACE_WITH_linux_x86_64_SHA"
    end
  end

  def install
    bin.install Dir["netdoctor*"].first => "netdoctor"
  end

  test do
    assert_match "netdoctor", shell_output("#{bin}/netdoctor --version")
  end
end
