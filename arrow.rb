class Arrow < Formula
    desc "Vector database with persistent storage built in Rust"
    homepage "https://github.com/varadanvk/arrow"
    url "https://github.com/varadanvk/arrow/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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


