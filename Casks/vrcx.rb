cask "vrcx" do
  arch arm: "arm64", intel: "x64"

  version "2026.01.04"
  sha256 arm:   "e27a0a9a564ff28b71357feec19c8868b6af839963c54c3c32c5bff5134fd8d9",
         intel: "21ce2615efa6e76680ff62e8fcfe0c36917b957b958264044d43cc1d5f6ca448"

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
