cask "openra-generals-alpha" do
  version "20250825,gen"
  sha256 "c6334db5cd1b3e39756baf05f8d16b1e996de43820e57d035d8eeeb91d1db233"

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
