class WinterChristmas < Formula
  desc "Animated ASCII Christmas tree and winter landscape in pure Bash"
  homepage "https://github.com/Gezwegen/winter-christmas"
  url "https://github.com/Gezwegen/winter-christmas/releases/download/v1.0.0/winter-christmas-1.0.0.tar.gz"
  sha256 "546a1e75b21d926accd2ca59b960aaeb761d65c37a9773e5d275d0c0ddf7ffc6"
  license "CC-BY-NC-SA-4.0"

  depends_on "bash"

  def install
    bin.install "winter_christmas.sh" => "winter-christmas"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/winter-christmas --help")
  end
end
