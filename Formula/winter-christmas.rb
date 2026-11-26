class WinterChristmas < Formula
  desc "Animated ASCII Christmas tree and winter landscape in pure Bash"
  homepage "https://github.com/Gezwegen/winter-christmas"
  url "https://github.com/Gezwegen/winter-christmas/releases/tag/v1.0.0"
  sha256 "c4ea23b5b7eab0881a8ace3a0e70acf537ed8e8258a5997a564f3ba102102da9"
  license "CC-BY-NC-SA-4.0"

  depends_on "bash"

  def install
    bin.install "winter_christmas.sh" => "winter-christmas"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/winter-christmas --help")
  end
end
