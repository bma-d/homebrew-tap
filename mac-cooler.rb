# typed: false
# frozen_string_literal: true

class MacCooler < Formula
  desc "Interactive process killer TUI for macOS."
  homepage "https://github.com/bma-d/mac-cooler"
  version "0.1.1"

  depends_on "python@3.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bma-d/mac-cooler/releases/download/v0.1.1/mac-cooler_0.1.1_darwin_amd64.tar.gz"
      sha256 "4fcffd9dd0e71dae333f9e68ec003d1266ced1fd065e5e00fcc179116fe9d77d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bma-d/mac-cooler/releases/download/v0.1.1/mac-cooler_0.1.1_darwin_arm64.tar.gz"
      sha256 "4fcffd9dd0e71dae333f9e68ec003d1266ced1fd065e5e00fcc179116fe9d77d"
    end
  end

  def install
    bin.install "mac-cooler"
    bin.install "cooler"
    bin.install "cooler.py"
  end

  test do
    system "#{bin}/mac-cooler", "--version"
  end
end
