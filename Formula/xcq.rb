class Xcq < Formula
  desc "Query and introspect Xcode projects from the CLI"
  homepage "https://github.com/alvarhansen/XcodeQuery"
  license "MIT"

  url "https://github.com/alvarhansen/XcodeQuery/releases/download/v0.1.1/xcq-v0.1.1-macos.zip"
  sha256 "129cb50e9339e508d785c9f449f69c1fb4e42da32779efe880cf64ee52ac7e95"
  version "0.1.1"

  head "https://github.com/alvarhansen/XcodeQuery.git", branch: "main"

  depends_on xcode: :build

  def install
    if build.head?
      ENV["SWIFTPM_DISABLE_SANDBOX"] = "1"
      system "swift", "build", "--disable-sandbox", "-c", "release"
      bin.install ".build/release/xcq"
    else
      bin.install "xcq"
    end
  end

  test do
    system bin/"xcq", "--help"
  end
end
