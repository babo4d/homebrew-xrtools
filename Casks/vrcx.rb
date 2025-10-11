cask "vrcx" do
  arch arm: "arm64", intel: "x64"

  version "2025.10.11"
  sha256 arm:   "d6ee3eb0a5e5dc4ea226dc2f4c72810e5e377bdba6ad7e291b491e692c8df28f",
         intel: "1dd7fadcf584fa7c9831f21c610f6c6035717db9ed9aa76d2ee8b683f5c1b8da"

  url "https://github.com/vrcx-team/VRCX/releases/download/v#{version}/VRCX_#{version}_#{arch}.dmg"
  name "VRCX"
  desc "Friendship management tool for VRChat"
  homepage "https://github.com/vrcx-team/VRCX"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "VRCX.app"

  zap trash: [
    "~/Library/Application Support/VRCX",
    "~/Library/Preferences/app.vrcx.plist",
  ]
end
