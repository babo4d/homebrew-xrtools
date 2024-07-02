cask "godots" do
  version "1.3.stable"
  sha256 "790f83b2a12815190848129d3b58c1ba52b8d5eec0809a943e3ee01c503db92c"

  url "https://github.com/MakovWait/godots/releases/download/v#{version}/macOS.zip"
  name "Godots"
  desc "Hub for managing your Godot versions and projects"
  homepage "https://github.com/MakovWait/godots"

  app "Godots.app"

  zap trash: [
    "~/Library/Application Support/Godot/app_userdata/Godots",
    "~/Library/Saved Application State/by.kovkel.godots.savedState",
  ]
end
