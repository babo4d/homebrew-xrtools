cask "openra-combined-arms" do
  version "1.05.1"
  sha256 "f263d6d5d6738cc0db9298f03ad8e92c423b71493aef34cda924e2b9c93bccba"

  url "https://github.com/Inq8/CAmod/releases/download/#{version}/CombinedArms-#{version}.dmg",
      verified: "github.com/Inq8/CAmod/"
  name "OpenRA - Combined Arms"
  desc "OpenRA mod combining content from various C&C games"
  homepage "https://www.moddb.com/mods/command-conquer-combined-arms"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenRA - Combined Arms.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.ca.savedState",
  ]
end
