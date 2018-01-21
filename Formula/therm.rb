class Therm < Formula
  desc "Therm is an iTerm2 fork that aims to have good defaults and minimum features"
  homepage "https://github.com/trufae/Therm"
  url "https://github.com/trufae/Therm/releases/download/0.1.2/Therm.app.zip"
  sha256 "4a1d43ef40f13d6cb6fadfa955489b7cd1f9976c4d332401565636ae543dbd1a"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
