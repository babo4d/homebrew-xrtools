cask "openra-ymca" do
  version "0.96.13"
  sha256 "eba68d2ac3a891ab2c87ec3f044e5c23f788204a6f9f98093774256a3532ec65"

  url "https://github.com/patrickwieth/YMCA/releases/download/v#{version}/YouMustConstructAdditional-v#{version}.dmg"
  name "OpenRA - You Must Construct Additional..."
  desc "You Must Construct Additional... OpenRA RTS Autobattler"
  homepage "https://www.moddb.com/mods/you-must-construct-additional1"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?(\w+(?:[.-]v?\d+)*)$/i)
  end

  depends_on :macos

  app "OpenRA - You Must Contruct Additional....app", target: "OpenRA - YMCA.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.ca.savedState",
  ]
end
