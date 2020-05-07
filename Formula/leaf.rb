class Leaf < Formula
  desc "General purpose hot-reloader for all projects."
  homepage "https://github.com/vrongmeal/leaf"
  url "https://github.com/vrongmeal/leaf/archive/v1.2.2.tar.gz"
  sha256 "b96bef79ca888fa5f44213a47af6d7069198539f16705094cbddda755aed5e28"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install Dir["build/*"]
  end
end
