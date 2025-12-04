class Rsm < Formula
  desc "Reference Standard M - Implementation of ANSI/MDC M X11.1-1995"
  homepage "https://gitlab.com/Reference-Standard-M/rsm"
  url "https://gitlab.com/Reference-Standard-M/rsm/-/archive/v1.82.4/rsm-v1.82.4.tar.gz"
  sha256 "81c2a866624f75921d6977dfdc6d0f0ab69f82a975020779a88847dd043a7a38" # Run: curl -sL <url> | shasum -a 256
  license "AGPL-3.0-or-later"
  
  head "https://gitlab.com/Reference-Standard-M/rsm.git", branch: "main"

  depends_on "make" => :build

  def install
    # Build the rsm executable
    system "make", "-j#{ENV.make_jobs}"
    
    # Install to Homebrew prefix
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    # Test that rsm runs and returns version info
    assert_match "Reference Standard M", shell_output("#{bin}/rsm -V 2>&1")
  end
end