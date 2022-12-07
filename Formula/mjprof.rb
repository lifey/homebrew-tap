# Generated with JReleaser 1.3.1 at 2022-12-07T15:50:53.115933+02:00
class Mjprof < Formula
  desc "mjprof is a command line monadic java profiler"
  homepage "https://github.com/AdoptOpenJDK/mjprof"
  version "1.1.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/AdoptOpenJDK/mjprof/releases/download/v1.1.0/mjprof-1.1.0-osx-aarch_64.zip"
    sha256 "b67a6b4aeab11c781e3422edd7600793294749112c553c27a2abac24bea4da49"
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
