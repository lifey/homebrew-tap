# Generated with JReleaser 1.3.1 at 2022-12-07T20:18:44.973643853Z
class Mjprof < Formula
  desc "mjprof is a command line monadic java profiler"
  homepage "https://github.com/AdoptOpenJDK/mjprof"
  version "1.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/AdoptOpenJDK/mjprof/releases/download/v1.1.0/mjprof-1.1.0-linux-x86_64.zip"
    sha256 "3ba5894bf4cc4f346f32d371b41cd9d98936db996240acc16f44021de7fc511e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/AdoptOpenJDK/mjprof/releases/download/v1.1.0/mjprof-1.1.0-osx-x86_64.zip"
    sha256 "3d526873b566f0837df886a14e3f2f4a25bf2459102e65530b85fce74b4636f7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/AdoptOpenJDK/mjprof/releases/download/v1.1.0/mjprof-1.1.0-osx-x86_64.zip"
    sha256 "3d526873b566f0837df886a14e3f2f4a25bf2459102e65530b85fce74b4636f7"
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
