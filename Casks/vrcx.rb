cask "vrcx" do
  arch arm: "arm64", intel: "x64"

  version "2026.02.11"
  sha256 arm:   "92adbd5141678b579da335c01becafa7f86feeaddb3539aa3193351a33c2c694",
         intel: "ed5da8f3259a5b941c11eef947d01c1b412b61a42b01b1f29e2760f2a060e869"

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
