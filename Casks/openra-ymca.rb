cask "openra-ymca" do
  version "0.95.62"
  sha256 "91db7e6bd6f0317845b07ac65e9c4169ba4dad7a2e6587708b02bfebbdddd471"

  url "https://github.com/patrickwieth/YMCA/releases/download/v#{version}/YouMustConstructAdditional-v#{version}.dmg",
      verified: "github.com/patrickwieth/YMCA/"
  name "OpenRA - You Must Construct Additional..."
  desc "You Must Construct Additional... OpenRA RTS Autobattler"
  homepage "https://www.moddb.com/mods/you-must-construct-additional1"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?(\w+(?:[.-]v?\d+)*)$/i)
  end

  app "OpenRA - You Must Contruct Additional....app", target: "OpenRA - YMCA.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.ca.savedState",
  ]
end
