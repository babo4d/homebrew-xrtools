cask "godots" do
  version "1.4.stable"
  sha256 "1e1282ad0bce1796196ab60100d0c1ab78e02b9aaa64a10bb3263df67860390f"

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
