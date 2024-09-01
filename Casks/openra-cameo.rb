cask "openra-cameo" do
  version "playtest-20240828"
  sha256 "0388d70871e7a7bcb825c555bd02476d2e90c17e5e57b20a2d592c743bc36f62"

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
