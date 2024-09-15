cask "openra-tiberiandawn-hd" do
  version "20231010-v2,release"
  sha256 "296aa094eecc1cb41499f9c7382c0a28b91b53be36829ed0f52b383b9c593056"

  url "https://github.com/OpenRA/TiberianDawnHD/releases/download/#{version.csv.second}-#{version.csv.first}/TiberianDawnHD-#{version.csv.second}-#{version.csv.first.sub(/-v\d+/, "")}.dmg"
  name "OpenRA - Tiberian Dawn HD"
  desc "OpenRA TD with remastered assets"
  homepage "https://github.com/OpenRA/TiberianDawnHD"

  livecheck do
    url :url
    regex(/^(\w+)-(\d+(?:[.-]v?\w+))$/i)
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
