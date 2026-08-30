cask "vrcx" do
  arch arm: "arm64", intel: "x64"

  version "2026.07.18"
  sha256 arm:   "b296d08044311696d68b26c92ab5bbcc8860ce82869a5ed30f2628b1e7e2353f",
         intel: "27a67d1cd087591a74e2180fe96977d7e7de83c1bbc0c495a91a6185087a6e81"

  url "https://github.com/vrcx-team/VRCX/releases/download/v#{version}/VRCX_#{version}_#{arch}.dmg"
  name "VRCX"
  desc "Friendship management tool for VRChat"
  homepage "https://github.com/vrcx-team/VRCX"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "VRCX.app"

  zap trash: [
    "~/Library/Application Support/VRCX",
    "~/Library/Preferences/app.vrcx.plist",
  ]
end
