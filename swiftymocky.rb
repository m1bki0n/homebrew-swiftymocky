class Swiftymocky < Formula
  desc "Framework for automatic mock generation. Adds a set of handy methods, simplifying testing. One of the best and most complete solutions, including generics support and much more."
  homepage "https://github.com/MakeAWishFoundation/SwiftyMocky"
  url "https://github.com/MakeAWishFoundation/SwiftyMocky/archive/refs/tags/3.6.0.tar.gz"
  sha256 "d71c9300db9c2fa1040ed29470710b577950cb62530d05ac609492c6e8ba5ed8"
  license "MIT"

  depends_on xcode: "13.0"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/#{name}"
  end

  test do
    system "#{bin}/swiftymocky"
  end
end
