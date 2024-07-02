cask "vccmac" do
  version "1.0.4"
  sha256 "5cb94383da0248d5d97d9e3f3d5e2cb0d26aaa7e28f74c93598113d2fcb6024e"

  url "https://github.com/AranoYuki1/VCC-for-mac/releases/download/#{version}/VCCMac.app.zip"
  name "VCC for mac"
  desc "Unofficial client for VRChat Creator Companion"
  homepage "https://github.com/AranoYuki1/VCC-for-mac"

  app "VCCMac.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yuki.vccmac.sfl*",
    "~/Library/Application Support/com.yuki.VCCMac",
    "~/Library/Logs/com.yuki.VCCMac",
    "~/Library/Preferences/com.yuki.VCCMac.plist",
    "~/Library/Saved Application State/com.yuki.VCCMac.savedState",
  ]
end
