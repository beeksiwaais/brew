class Webcopy < Formula
  desc "CLI tool to archive website HTML pages and assets for offline reading"
  homepage "https://github.com/beeksiwaais/httpcopy"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://apps-delivery.beeksiwaais.fr/webcopy/v0.1.0/webcopy-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://apps-delivery.beeksiwaais.fr/webcopy/v0.1.0/webcopy-darwin-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://apps-delivery.beeksiwaais.fr/webcopy/v0.1.0/webcopy-linux-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "webcopy"
    man1.install "webcopy.1"
  end

  test do
    system "#{bin}/webcopy", "--help"
  end
end
