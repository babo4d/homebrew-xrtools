cask "vrcx" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.16"
  sha256 arm:   "45293b33a96ba222052edba71fcf42306cb220ebe2591b462372a7d14467f2b3",
         intel: "0e7687531d14c4e6a788ee98c55e828754db2bfceeab0b1997b0a3613cea74ff"

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
