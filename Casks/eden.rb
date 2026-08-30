cask "eden" do
  version "0.2.1"
  sha256 "40575fc79a61550fbb9e332cbae94ccd20f5de20ff61b4b60fe1d42f2525c0b5"

  url "https://git.eden-emu.dev/eden-emu/eden/releases/download/v#{version}/Eden-macOS-v#{version}.dmg"
  name "Eden Emulator"
  desc "Nintendo Switch emulator"
  homepage "https://eden-emu.dev/"

  livecheck do
    url "https://git.eden-emu.dev/eden-emu/eden.git"
    regex(/v?(\d+(?:\.\d+)+[-\w]*)/i)
    strategy :git
  end

  depends_on :macos

  app "eden.app"

  # zap trash: []
end
