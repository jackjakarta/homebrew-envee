class Envee < Formula
  desc "Run processes with env vars injected from a file"
  homepage "https://github.com/jackjakarta/envee"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/0.1.2/envee-darwin-arm64.tar.gz"
      sha256 "104cd699f002269e9ef45bda74a0dbc790caeb0692b13e68ef515cf2e10a17cb"
    else
      url "https://github.com/jackjakarta/envee/releases/download/0.1.2/envee-darwin-amd64.tar.gz"
      sha256 "c50cd153f6c57108a4bda6a2b54fdab08c223059af87891bde294c0f0e82b1f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/0.1.2/envee-linux-arm64.tar.gz"
      sha256 "12c264a264f67ef208d042eb7a920e720bf6b4d832afaa425c43d64c88e30ca5"
    else
      url "https://github.com/jackjakarta/envee/releases/download/0.1.2/envee-linux-amd64.tar.gz"
      sha256 "cdb07d57ed93fee417279a91d1494757c03fe87e55a7a6c70e22656381fcc65a"
    end
  end

  def install
    bin.install "envee"
  end

  test do
    system "#{bin}/envee", "-h"
  end
end
