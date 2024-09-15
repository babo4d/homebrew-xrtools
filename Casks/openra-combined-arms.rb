cask "openra-combined-arms" do
  version "1.04"
  sha256 "dd02c5ed8b2bc4777cfa992289938d6c1b1a19b6efd91acb71a3bd62df4397fe"

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
