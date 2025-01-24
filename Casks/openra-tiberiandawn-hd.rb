cask "openra-tiberiandawn-hd" do
  version "20241228,playtest"
  sha256 "b20ca85deca91cd257b9218b9bac6e5cb84730d83253bbfb27d5ad8e75421c6c"

  url "https://github.com/OpenRA/TiberianDawnHD/releases/download/#{version.csv.second}-#{version.csv.first}/TiberianDawnHD-#{version.csv.second}-#{version.csv.first}.dmg"
  name "OpenRA - Tiberian Dawn HD"
  desc "OpenRA TD with remastered assets"
  homepage "https://github.com/OpenRA/TiberianDawnHD"

  livecheck do
    url :url
    regex(/^(\w+)-(\d+)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "OpenRA - Tiberian Dawn HD.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.cnc.savedState",
  ]
end
