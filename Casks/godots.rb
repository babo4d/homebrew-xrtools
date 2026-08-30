cask "godots" do
  version "1.4.2.stable"
  sha256 "b11e0fd005625257f984c55a8d6a98ad6bccab5882da0b23b3aab67541f0a47e"

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
