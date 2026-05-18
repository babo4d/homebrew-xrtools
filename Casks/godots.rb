cask "godots" do
  version "1.4.1.stable"
  sha256 "336a56dbf1a59ca88c21b00affbfa068162ef2453efdb7c822f40837440092a2"

  url "https://github.com/MakovWait/godots/releases/download/v#{version}/macOS.zip"
  name "Godots"
  desc "Hub for managing your Godot versions and projects"
  homepage "https://github.com/MakovWait/godots"

  depends_on macos: :big_sur

  app "Godots.app"

  zap trash: [
    "~/Library/Application Support/Godot/app_userdata/Godots",
    "~/Library/Saved Application State/by.kovkel.godots.savedState",
  ]
end
