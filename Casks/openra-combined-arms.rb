cask "openra-combined-arms" do
  version "1.03"
  sha256 "79c5ff5d047ffdb0851316d402a729b377f67ad66027310bccc12beed729815c"

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
