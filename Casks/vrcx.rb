cask "vrcx" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.14"
  sha256 arm:   "abe73873bc3ab6486c963b18b91a9c286fa1dc4145ab07696e007e2d54c3b38b",
         intel: "40e7bc49ea5d1e0d88c6fb333ab7637e06b5ea0e6fa0b77d1d61080b1c5437a7"

  url "https://github.com/vrcx-team/VRCX/releases/download/v#{version}/VRCX_#{version}_#{arch}.dmg"
  name "VRCX"
  desc "Friendship management tool for VRChat"
  homepage "https://github.com/vrcx-team/VRCX"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "VRCX.app"

  zap trash: [
    "~/Library/Application Support/VRCX",
    "~/Library/Preferences/app.vrcx.plist",
  ]
end
