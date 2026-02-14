class Envee < Formula
  desc "Run processes with env vars injected from a file"
  homepage "https://github.com/jackjakarta/envee"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/0.1.4/envee-darwin-arm64.tar.gz"
      sha256 "a68fdc766603b507a75a2e3418f2513d258befa9df2efd2f10e2e56a06c8156e"
    else
      url "https://github.com/jackjakarta/envee/releases/download/0.1.4/envee-darwin-amd64.tar.gz"
      sha256 "f23f5705a6163656739d786811940e9a4b77d6685aa478c3039e8df23e6d9d69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/0.1.4/envee-linux-arm64.tar.gz"
      sha256 "3c6f2c9ef3e423d7fb61730b7008acc4b4f4870eec680f7cea0f179247811d51"
    else
      url "https://github.com/jackjakarta/envee/releases/download/0.1.4/envee-linux-amd64.tar.gz"
      sha256 "2d175b7540eb641a9ae3c8d5a0a29547c7723080be667fea7596f89b1f4372c2"
    end
  end

  def install
    bin.install "envee"
  end

  test do
    system "#{bin}/envee", "-h"
  end
end
