cask "openra-combined-arms" do
  version "1.06.1"
  sha256 "d6bcf1f9e770ae09b7dba8f3b5b021174150301fe751222dfcd06ea4ff1a02a4"

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
