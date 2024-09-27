cask "openra-shattered-paradise" do
  version "20240921,playtest"
  sha256 "8904cf70c9614c633328f565b0f4710c30a2ebba106e6a3a7c66efe279b42dab"

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
