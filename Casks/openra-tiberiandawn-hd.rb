cask "openra-tiberiandawn-hd" do
  version "release-20231010-v2"
  sha256 "296aa094eecc1cb41499f9c7382c0a28b91b53be36829ed0f52b383b9c593056"

  url "https://github.com/OpenRA/TiberianDawnHD/releases/download/#{version}/TiberianDawnHD-#{version.sub(/-v\d+/, "")}.dmg"
  name "OpenRA - Tiberian Dawn HD"
  desc "OpenRA TD with remastered assets"
  homepage "https://github.com/OpenRA/TiberianDawnHD"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^(\w+(?:[.-]v?\d+)*)$/i)
  end

  app "OpenRA - Tiberian Dawn HD.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.cnc.savedState",
  ]
end
