# Generated with JReleaser 1.3.1 at 2022-12-08T20:54:26.491190306Z
class Mjprof < Formula
  desc "mjprof is a command line monadic java profiler"
  homepage "https://github.com/AdoptOpenJDK/mjprof"
  version "1.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/AdoptOpenJDK/mjprof/releases/download/v1.1.0/mjprof-1.1.0-linux-x86_64.zip"
    sha256 "67b3292390c340b57d4950b913e642a6cd5aec82360325f3ea5c7133efed2867"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/AdoptOpenJDK/mjprof/releases/download/v1.1.0/mjprof-1.1.0-osx-x86_64.zip"
    sha256 "3aaa7036e4729801f3f835f3ab960957dc0cd25b30da7c975f761797244db4bc"
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
