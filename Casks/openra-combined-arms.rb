cask "openra-combined-arms" do
  version "1.02"
  sha256 "f2cff0b68c6bd9c8ba1bf5e730ede73be63048fb7562b94c6eef19d300e9379a"

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
