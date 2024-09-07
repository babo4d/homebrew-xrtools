cask "openra-cameo" do
  version "playtest-20240903"
  sha256 "fccfa019bc38df0668908c4edd20836a3eb5af53fd35d2774231ab48d16ccf51"

  url "https://github.com/Zeruel87/Cameo-mod/releases/download/#{version}/CameoMod-#{version}.dmg",
      verified: "github.com/Zeruel87/Cameo-mod/"
  name "OpenRA - Cameo Mod"
  desc "OpenRA mod bringing together many factions from different universes"
  homepage "https://www.moddb.com/mods/cameo"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^(\w+(?:[.-]v?\d+)*)$/i)
  end

  app "OpenRA - Cameo Mod.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.cameo.savedState",
  ]
end
