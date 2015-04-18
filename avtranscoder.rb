require "formula"

class Avtranscoder < Formula
  homepage ""
  url "https://github.com/avTranscoder/avTranscoder.git", :branch => "master"
  version "master"

  depends_on "cmake" => :build
  depends_on "swig" => :recommended  # python and java bindings
  depends_on "ffmpeg"
  depends_on "freeglut" => :optional  # for avplay app (need XQuartz, https://xquartz.macosforge.org)

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DCMAKE_BUILD_TYPE=RELEASE"
    system "make", "install"
  end
end
