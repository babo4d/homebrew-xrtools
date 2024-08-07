cask "openra-shattered-paradise" do
  version "playtest-20240526"
  sha256 "301146073748fa4652a4e3d80ef6f1d54e74e61150b65b5adb57781c531dc520"

  url "https://github.com/ABrandau/Shattered-Paradise-SDK/releases/download/#{version}/ShatteredParadise-#{version}.dmg",
      verified: "github.com/ABrandau/Shattered-Paradise-SDK/"
  name "OpenRA - Shattered Paradise"
  desc "Expansion for Tiberian Sun on OpenRA"
  homepage "https://www.moddb.com/mods/shattered-paradise"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^(\w+(?:[.-]v?\d+)*)$/i)
  end

  app "OpenRA - Shattered Paradise.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.sp.savedState",
  ]
end
