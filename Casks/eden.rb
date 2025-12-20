cask "eden" do
  version "0.0.4-rc3"
  sha256 "2d860ef722eebdd181905682c07de0b1c572aea9f47f182b9d6fcf626e3d7260"

  url "https://github.com/eden-emulator/Releases/releases/download/v#{version}/Eden-macOS-v#{version}.tar.gz",
      verified: "github.com/eden-emulator/"
  name "Eden Emulator"
  desc "Nintendo Switch emulator"
  homepage "https://eden-emu.dev/"

  livecheck do
    url "https://github.com/eden-emulator/Releases"
    regex(/v?(\d+(?:\.\d+)+[-\w]*)/i)
    strategy :github_latest
  end

  app "eden.app"

  # zap trash: []
end
