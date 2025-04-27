cask "openra-tiberiandawn-hd" do
  version "20250330,-v4,release"
  sha256 "b5b3c97bfbfc9eba3caf75c5e2ddc26048351f438c03f03056f2ec2ded83f793"

  url "https://github.com/OpenRA/TiberianDawnHD/releases/download/#{version.csv.third}-#{version.csv.first}#{version.csv.second}/TiberianDawnHD-#{version.csv.third}-#{version.csv.first}.dmg"
  name "OpenRA - Tiberian Dawn HD"
  desc "OpenRA TD with remastered assets"
  homepage "https://github.com/OpenRA/TiberianDawnHD"

  livecheck do
    url :url
    regex(/^(\w+)-(\d+)(-\w*)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[1]},#{match[2]},#{match[0]}" }
    end
  end

  app "OpenRA - Tiberian Dawn HD.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.cnc.savedState",
  ]
end
