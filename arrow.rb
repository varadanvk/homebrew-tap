class Arrow < Formula
  desc "Vector database with persistent storage built in Rust"
  homepage "https://github.com/varadanvk/arrow"
  url "https://github.com/varadanvk/arrow/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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