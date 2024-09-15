cask "openra-generals-alpha" do
  version "20240829,gen"
  sha256 "2e9ab3116ae8cc9a553831eb6dd78f583fde7889c94c3a964a185250e23e558f"

  url "https://github.com/MustaphaTR/Generals-Alpha/releases/download/#{version.csv.second}-#{version.csv.first}/GeneralsAlpha-#{version.csv.second}-#{version.csv.first}.dmg",
      verified: "github.com/MustaphaTR/Generals-Alpha/"
  name "OpenRA - Generals Alpha"
  desc "OpenRA mod that recreates Command & Conquer: Generals on OpenRA engine"
  homepage "https://www.moddb.com/mods/generals-alpha"

  livecheck do
    url :url
    regex(/^(\w+)-(\d+)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "OpenRA - Generals Alpha.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.gen.savedState",
  ]
end
