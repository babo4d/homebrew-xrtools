cask "vrcx" do
  arch arm: "arm64", intel: "x64"

  version "2025.12.06"
  sha256 arm:   "751d4a9f15f5178a52e209645bd7e886466961e43d5488beec6d2dae62f27093",
         intel: "d81336c17838fe7112b62cf07c2cba0cb90fe1867ca48591de9772d7ee08a715"

  url "https://github.com/vrcx-team/VRCX/releases/download/v#{version}/VRCX_#{version}_#{arch}.dmg"
  name "VRCX"
  desc "Friendship management tool for VRChat"
  homepage "https://github.com/vrcx-team/VRCX"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "VRCX.app"

  zap trash: [
    "~/Library/Application Support/VRCX",
    "~/Library/Preferences/app.vrcx.plist",
  ]
end
