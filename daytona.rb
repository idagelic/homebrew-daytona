# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Daytona < Formula
  desc ""
  homepage "https://daytona.io/"
  version "1.0"

  on_macos do
    url "https://github.com/idagelic/TempDTN2/releases/download/v1.0/TempDTN2_1.0_darwin_all.tar.gz"
    sha256 "89661a1107756feb9f48a082760767bb8a77618acca46c87bcb5efc13e7dde60"

    def install
      bin.install "TempDTN2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/idagelic/TempDTN2/releases/download/v1.0/TempDTN2_1.0_linux_amd64.tar.gz"
      sha256 "63b43ddebeceb1e068659f194d98d42148ff25e8439bde5775c255fef5b5e3e8"

      def install
        bin.install "daytona"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/idagelic/TempDTN2/releases/download/v1.0/TempDTN2_1.0_linux_arm64.tar.gz"
      sha256 "a9c028e6177afd647668d8d3655f5f5b5a0c0fedbbc3e39b50e882f6f4cfc3c7"

      def install
        bin.install "daytona"
      end
    end
  end
end