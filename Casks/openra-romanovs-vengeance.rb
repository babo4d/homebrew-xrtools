cask "openra-romanovs-vengeance" do
  version "20241215,playtest"
  sha256 "146cea4fdf7a29be3fe4f49c345cd1d90447390ce74de5ba27dd504dd2b76ae4"

  url "https://github.com/MustaphaTR/Romanovs-Vengeance/releases/download/#{version.csv.second}-#{version.csv.first}/Romanovs.Vengeance-#{version.csv.second}-#{version.csv.first}.dmg",
      verified: "github.com/MustaphaTR/Romanovs-Vengeance/"
  name "OpenRA - Romanov's Vengeance"
  desc "OpenRA mod based on Command & Conquer: Red Alert 2"
  homepage "https://www.moddb.com/mods/romanovs-vengeance"

  livecheck do
    url :url
    regex(/^(\w+)-(\d+)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "OpenRA - Romanovs Vengeance.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.rv.savedState",
  ]
end
