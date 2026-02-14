class Envee < Formula
  desc "Run processes with env vars injected from a file"
  homepage "https://github.com/jackjakarta/envee"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/0.1.4/envee-darwin-arm64.tar.gz"
      sha256 "73e0c3f7603d7e73a6936fa8884c78c3e42ec8f30a72a4774d3d36530fb8b6d6"
    else
      url "https://github.com/jackjakarta/envee/releases/download/0.1.4/envee-darwin-amd64.tar.gz"
      sha256 "b3a129ae6a5397b12748212f204c874bbb200e3432750f4001d7c9b87479dfe6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/envee/releases/download/0.1.4/envee-linux-arm64.tar.gz"
      sha256 "3afeee2c1c9f00075287ea122ed64ef8a842bed507b6ba90fd2d8342b71df493"
    else
      url "https://github.com/jackjakarta/envee/releases/download/0.1.4/envee-linux-amd64.tar.gz"
      sha256 "5d2806bc612c29dbc56cde10a421e6fa66a86a84017c6ef410ab9996cf265db9"
    end
  end

  def install
    bin.install "envee"
  end

  test do
    system "#{bin}/envee", "-h"
  end
end
