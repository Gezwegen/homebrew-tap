class WinterChristmas < Formula
  desc "Animated ASCII Christmas tree and winter landscape in pure Bash"
  homepage "https://github.com/Gezwegen/winter-christmas"
  url "https://github.com/Gezwegen/winter-christmas/releases/tag/v1.0.0"
  sha256 "b7e2cf234e657108121f0f82dbf0e207838e4dce2c59737401c6e36e3262ac52"
  license "CC-BY-NC-SA-4.0"

  depends_on "bash"

  def install
    bin.install "winter_christmas.sh" => "winter-christmas"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/winter-christmas --help")
  end
end
