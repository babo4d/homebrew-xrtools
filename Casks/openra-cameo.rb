cask "openra-cameo" do
  version "playtest-20240825"
  sha256 "59aa87de912d6dc7b446153e1456acb77f60f1f6fbe7aba60541cd14171b027d"

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
