cask "openra-cameo" do
  version "20240903,playtest"
  sha256 "fccfa019bc38df0668908c4edd20836a3eb5af53fd35d2774231ab48d16ccf51"

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
