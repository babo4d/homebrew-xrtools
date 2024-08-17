cask "openra-cameo" do
  version "playtest-20240813"
  sha256 "c3968b7677c5081c9e035f2d0d116cc593c2b059f10f292fa52e8543b82ed6b6"

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
