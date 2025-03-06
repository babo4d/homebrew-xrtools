cask "openra-ymca" do
  version "0.95.49"
  sha256 "5a94998aa72244f88a867cf09a6b177e2b6b26d5f6ac8214757a4501383063ee"

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
