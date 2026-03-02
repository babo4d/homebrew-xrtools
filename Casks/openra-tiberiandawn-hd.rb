cask "openra-tiberiandawn-hd" do
  version "20260222,playtest"
  sha256 "6777fe3f2cf5972a8e67d51b262d54c130cd638b20e1655f6556eb657a098d2e"

  url "https://github.com/OpenRA/TiberianDawnHD/releases/download/#{version.csv.second}-#{version.csv.first}/TiberianDawnHD-#{version.csv.second}-#{version.csv.first.sub(/-\w+/, "")}.dmg"
  name "OpenRA - Tiberian Dawn HD"
  desc "OpenRA TD with remastered assets"
  homepage "https://github.com/OpenRA/TiberianDawnHD"

  livecheck do
    url :url
    regex(/^(\w+)-(\d+[-\w]*)$/i)
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
