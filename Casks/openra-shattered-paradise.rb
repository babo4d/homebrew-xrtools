cask "openra-shattered-paradise" do
  version "20240526,playtest"
  sha256 "301146073748fa4652a4e3d80ef6f1d54e74e61150b65b5adb57781c531dc520"

  url "https://github.com/ABrandau/Shattered-Paradise-SDK/releases/download/#{version.csv.second}-#{version.csv.first}/ShatteredParadise-#{version.csv.second}-#{version.csv.first}.dmg",
      verified: "github.com/ABrandau/Shattered-Paradise-SDK/"
  name "OpenRA - Shattered Paradise"
  desc "Expansion for Tiberian Sun on OpenRA"
  homepage "https://www.moddb.com/mods/shattered-paradise"

  livecheck do
    url :url
    regex(/^(\w+)-(\d+)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "OpenRA - Shattered Paradise.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.sp.savedState",
  ]
end
