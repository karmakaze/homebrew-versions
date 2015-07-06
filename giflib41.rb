class Giflib41 < Formula
  desc "A library and utilities for processing GIFs"
  homepage "http://giflib.sourceforge.net/"
  url "https://downloads.sourceforge.net/project/giflib/giflib-4.x/giflib-4.1.6/giflib-4.1.6.tar.bz2"
  sha256 "e1c1ced9c5bc8f93ef0faf0a8c7717abf784d10a7b270d2285e8e1f3b93f2bed"

  keg_only "Conflicts with giflib in main repository."

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make", "install"
  end

  test do
    system "#{bin}/gif2rgb", "-q", "-1", "-o", "#{buildpath}/out.rgb", "#{buildpath}/pic/welcome2.gif"
    system "rm", "#{buildpath}/out.rgb"
  end
end
