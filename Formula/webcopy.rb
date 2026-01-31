class Webcopy < Formula
  desc "CLI tool to archive website HTML pages and assets for offline reading"
  homepage "https://github.com/beeksiwaais/httpcopy"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://apps-delivery.beeksiwaais.fr/webcopy/v0.1.1/webcopy-darwin-arm64.tar.gz"
      sha256 "a82955604fb14957659b07f263b48787a2a324c69580a131194b7d79be865ed3"
    end
    on_intel do
      url "https://apps-delivery.beeksiwaais.fr/webcopy/v0.1.1/webcopy-darwin-amd64.tar.gz"
      sha256 "935aeec97a56e98abf53d0eb52b9a400711de35155a2955106a0107f80fdad65"
    end
  end

  on_linux do
    on_intel do
      url "https://apps-delivery.beeksiwaais.fr/webcopy/v0.1.1/webcopy-linux-amd64.tar.gz"
      sha256 "893899d317579945e9f9321e61d7cdc64adf527520e2e393759f452e699c5bc4"
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
