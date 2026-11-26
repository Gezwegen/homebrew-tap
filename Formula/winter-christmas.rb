class WinterChristmas < Formula
  desc "Animated ASCII Christmas tree and winter landscape in pure Bash"
  homepage "https://github.com/Gezwegen/winter-christmas"
  url "https://github.com/Gezwegen/winter-christmas/releases/tag/v1.0.0"
  sha256 "63ddd4f0a1c20981ed0d4e31b5c8bdda95a2bbac3c9a93f19b1970eeb28ae2b7"
  license "CC-BY-NC-SA-4.0"

  depends_on "bash"

  def install
    bin.install "winter_christmas.sh" => "winter-christmas"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/winter-christmas --help")
  end
end
