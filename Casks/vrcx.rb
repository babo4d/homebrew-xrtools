cask "vrcx" do
  arch arm: "arm64", intel: "x64"

  version "2025.11.16"
  sha256 arm:   "9977dfd4c61ae46d0c510d758c8fc95afb676486b93934f7e97a4594701dc78c",
         intel: "987ba31064eeca955455cce4b29a5724d8d616c0d45b53d74b6e3e4d3643aed4"

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
