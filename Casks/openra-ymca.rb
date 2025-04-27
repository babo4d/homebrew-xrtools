cask "openra-ymca" do
  version "0.95.51"
  sha256 "29255aebcaf44a0109bf1b0a26620c40a802a555339b45208abe07c0ff5f83aa"

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
