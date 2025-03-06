cask "openra-tiberiandawn-hd" do
  version "20250303,release"
  sha256 "2dd3d5e5d8a31647c225469523eea94fdd997a9770f83ee2f8b231dc8c09e1ad"

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
