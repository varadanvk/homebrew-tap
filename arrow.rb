class Arrow < Formula
    desc "Vector database with persistent storage built in Rust"
    homepage "https://github.com/varadanvk/arrow"
    url "https://github.com/varadanvk/arrow/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_SHA256_AFTER_RELEASE"
    license "MIT"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "build", "--release", "--bin", "arrow"
      bin.install "target/release/arrow"
    end
  
    test do
      system "#{bin}/arrow", "--version"
    end
  end


