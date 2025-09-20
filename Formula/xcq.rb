class Xcq < Formula
  desc "Query and introspect Xcode projects from the CLI"
  homepage "https://github.com/alvarhansen/XcodeQuery"
  license "MIT"

  # Stable prebuilt binary
  url "https://github.com/alvarhansen/XcodeQuery/releases/download/v0.0.1/xcq-v0.0.1-macos.zip"
  sha256 "9dddee129116e9e3bc3d2028c714507a760e03470dca2f99bc272b8ccc1cd37b"
  version "0.0.1"

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
