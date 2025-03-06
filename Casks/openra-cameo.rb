cask "openra-cameo" do
  version "20250304,playtest"
  sha256 "dc5fab8685e0fa1538083eae680af2bea0d40c76ef78576593f5f96d2ff4468c"

  url "https://github.com/Zeruel87/Cameo-mod/releases/download/#{version.csv.second}-#{version.csv.first}/CameoMod-#{version.csv.second}-#{version.csv.first}.dmg",
      verified: "github.com/Zeruel87/Cameo-mod/"
  name "OpenRA - Cameo Mod"
  desc "OpenRA mod bringing together many factions from different universes"
  homepage "https://www.moddb.com/mods/cameo"

  livecheck do
    url :url
    regex(/^(\w+)-(\d+)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "OpenRA - Cameo Mod.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.cameo.savedState",
  ]
end
