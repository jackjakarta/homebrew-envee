class Envee < Formula
  desc "Run processes with env vars injected from a file"
  homepage "https://github.com/jackjakarta/envee"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/0.1.5/envee-darwin-arm64.tar.gz"
      sha256 "d4ece762e7d018e824bd3b8189b3f360384d82ce49bdad4e0ad08422ef2bf0c9"
    else
      url "https://github.com/jackjakarta/envee/releases/download/0.1.5/envee-darwin-amd64.tar.gz"
      sha256 "c693c5ad96362798c20622a43b44f6a26d9fa620dd58a5e28ed91771c9f54b21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/0.1.5/envee-linux-arm64.tar.gz"
      sha256 "b46385a8ec9fe1a772ed0c0b0883adb9db9bf4d0af879801820ed1d33cdfa89e"
    else
      url "https://github.com/jackjakarta/envee/releases/download/0.1.5/envee-linux-amd64.tar.gz"
      sha256 "c81a0be3595c86872f706dce3197cc50f73e65ffbe5ae02bd3c6dbbec9cdc8db"
    end
  end

  def install
    bin.install "envee"
  end

  test do
    system "#{bin}/envee", "-h"
  end
end
