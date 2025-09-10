class Xcq < Formula
  desc "Query and introspect Xcode projects from the CLI"
  homepage "https://github.com/alvarhansen/XcodeQuery"
  license "MIT"

  # Stable release (uncomment and update on each tag)
  # url "https://github.com/alvarhansen/XcodeQuery/archive/refs/tags/v0.1.0.tar.gz"
  # sha256 "REPLACE_WITH_TARBALL_SHA256"

  head "https://github.com/alvarhansen/XcodeQuery.git", branch: "main"

  depends_on xcode: :build

  def install
    ENV["SWIFTPM_DISABLE_SANDBOX"] = "1"
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/xcq"
  end

  test do
    system bin/"xcq", "--help"
  end
end
