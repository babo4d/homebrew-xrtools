cask "vrcx" do
  arch arm: "arm64", intel: "x64"

  version "2025.10.27"
  sha256 arm:   "f1538c12b6f2b96eb0edc263e9e6aad4c92157d045d710e48016873eaae089ea",
         intel: "f2243d8324614a029e96de66a536d6da861a09c3c833079d6a7ad0ea986791c6"

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
