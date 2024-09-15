cask "openra-romanovs-vengeance" do
  version "20240218,playtest"
  sha256 "d5bcea44634bb8335550c3cc1ff6566b54ac7b0699b5895c5dfd3e5bb9cf2025"

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
