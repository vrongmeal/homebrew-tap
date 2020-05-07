class Leaf < Formula
  desc "General purpose hot-reloader for all projects."
  homepage "https://github.com/vrongmeal/leaf"
  url "https://github.com/vrongmeal/leaf/archive/v1.2.2.tar.gz"
  sha256 "be8c0538b82109464dc5d5b28c7055cf76295f19d0777bce2bbc07e6460936be"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install Dir["build/*"]
  end
end
