# Generated with JReleaser 1.3.1 at 2022-12-07T15:08:18.33398682Z
class Mjprof < Formula
  desc "mjprof is a command line monadic java profiler"
  homepage "https://github.com/AdoptOpenJDK/mjprof"
  version "1.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/AdoptOpenJDK/mjprof/releases/download/v1.1.0/mjprof-1.1.0-linux-x86_64.zip"
    sha256 "84e72f55d57b1a8263bae2d0f65ca9e8881dff471b45b69a9dce71b8782b64a6"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/AdoptOpenJDK/mjprof/releases/download/v1.1.0/mjprof-1.1.0-osx-x86_64.zip"
    sha256 "0984a8b8bf9891548899bc584ac476fbb7ffe927fb5388bc2bc2468a501456cd"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mjprof" => "mjprof"
  end

  test do
    output = shell_output("#{bin}/mjprof --version")
    assert_match "1.1.0", output
  end
end
