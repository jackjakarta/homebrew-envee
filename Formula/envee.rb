class Envee < Formula
  desc "Run processes with env vars injected from a file"
  homepage "https://github.com/jackjakarta/envee"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/0.1.3/envee-darwin-arm64.tar.gz"
      sha256 "799402070c1ae54573bcf5e56abe9a1923510afbd3fd088ca26d8cef8531dc97"
    else
      url "https://github.com/jackjakarta/envee/releases/download/0.1.3/envee-darwin-amd64.tar.gz"
      sha256 "8fa502ecba4b89dabce6f2c290f5ddffeefe374d8a75d5ee2ed55afeef14a498"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/0.1.3/envee-linux-arm64.tar.gz"
      sha256 "0643dbb4f24fe604bb1e1841322a07750deaa5cade3fcc447c8e21a9bd7ce44b"
    else
      url "https://github.com/jackjakarta/envee/releases/download/0.1.3/envee-linux-amd64.tar.gz"
      sha256 "496d3acadd1422d1c6f7e8f25c163cdcedc1d998a2ced5fe861f4078259f02bf"
    end
  end

  def install
    bin.install "envee"
  end

  test do
    system "#{bin}/envee", "-h"
  end
end
