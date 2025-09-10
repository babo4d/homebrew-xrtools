cask "vrcx" do
  arch arm: "arm64", intel: "x64"

  version "2025.09.10"
  sha256 arm:   "abe45069cdfff0e2cca54ea88fd23bef2f8e910ea7c14c7a82867967ca7d0851",
         intel: "7fe7dee5c73f60feddb964b0edb456eebff0848485be1192c2244088cbd11e96"

  url "https://github.com/vrcx-team/VRCX/releases/download/v#{version}/VRCX_#{version.no_dots}_#{arch}.dmg"
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
