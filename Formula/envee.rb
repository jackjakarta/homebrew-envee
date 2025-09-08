class Envee < Formula
  desc "Run processes with env vars injected from a file"
  homepage "https://github.com/jackjakarta/envee"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/v0.1.0/envee-darwin-arm64.tar.gz"
      sha256 "d7a45103357689f42ef250d02911bc7cc05b929cb112dc6e188b66ae2bb8aeee"
    else
      url "https://github.com/jackjakarta/envee/releases/download/v0.1.0/envee-darwin-amd64.tar.gz"
      sha256 "c7920d1f822fc7059d05b862c0ef45d87c1d287ed1da97ffa7a97ff12a78e1c1"
    end
  end

  def install
    bin.install "envee"
  end

  test do
    system "#{bin}/envee", "-h"
  end
end
