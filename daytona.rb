class Daytona < Formula
  desc "Daytona CLI"
  homepage "https://daytona.io"

  # Construct the URL based on the user's OS and ARCH
  if OS.mac? && Hardware::CPU.arm?
    url "https://download.daytona.io/latest/daytona-darwin-arm64"
    sha256 "<<DARWIN_ARM64_SHA256>>"
  elsif OS.mac? && Hardware::CPU.intel?    
    url "https://download.daytona.io/latest/daytona-darwin-amd64"    
    sha256 "<<DARWIN_AMD64_SHA256>>"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://download.daytona.io/latest/daytona-linux-amd64"
    sha256 "dccdd06919c0db60b01f7a911e91fe2bd96c8ec6561cd326b2eb87ca553095f3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://download.daytona.io/latest/daytona-linux-arm64"
    sha256 "<<DARWIN_AMD64_SHA256>>"
  else
    odie "Unsupported OS/ARCH combination"
  end

  bottle :unneeded

  def install
    bin.install "daytona-#{OS.mac? ? 'darwin' : 'linux'}-#{Hardware::CPU.intel? ? 'amd64' : 'arm64'}" => "daytona"
  end

  test do
    system "#{bin}/daytona", "version"
  end
end
