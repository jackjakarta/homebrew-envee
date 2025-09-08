class Envee < Formula
  desc "Run processes with env vars injected from a file"
  homepage "https://github.com/jackjakarta/envee"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/0.1.1/envee-darwin-arm64.tar.gz"
      sha256 "d56f3c19f8f7916b4de2b62c76ddbc9de34984d489325e5ea5d49e64a2ac6f20"
    else
      url "https://github.com/jackjakarta/envee/releases/download/0.1.1/envee-darwin-amd64.tar.gz"
      sha256 "68faf7224be564c134d0de8390d0c057a8c0c0c496401aaaac1cea26f381491e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/0.1.1/envee-linux-arm64.tar.gz"
      sha256 "e9fdeb1e8ae43b95c8dc4295ed94279ccfcc14da0c3fafc0842d09df2510adef"
    else
      url "https://github.com/jackjakarta/envee/releases/download/0.1.1/envee-linux-amd64.tar.gz"
      sha256 "068cf44266e5f1e3556a0ed2d69c7e8856fa3a8a6b6808cbe53f3f2f5961a9f5"
    end
  end

  def install
    bin.install "envee"
  end

  test do
    system "#{bin}/envee", "-h"
  end
end
