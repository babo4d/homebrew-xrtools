cask "openra-cameo" do
  version "playtest-20240721"
  sha256 "94691107f9111ab41bd4265107245d769b31d0561ecd61f5cfdf2fa10622c4af"

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
