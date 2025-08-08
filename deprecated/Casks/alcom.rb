cask "alcom" do
  version "0.1.7"
  sha256 "3d1f3e9372ae0f3ea141eafbcf8242da6f074eb0c0f14b3b7f6c048cfffa8e44"

  url "https://github.com/vrc-get/vrc-get/releases/download/gui-v#{version}/ALCOM-#{version}-universal.dmg"
  name "ALCOM (vrc-get-gui)"
  desc "GUI version of vrc-get"
  homepage "https://github.com/vrc-get/vrc-get"

  app "ALCOM.app"

  zap trash: [
    "~/Library/Caches/com.anataw12.vrc-get",
    "~/Library/Saved Application State/com.anataw12.vrc-get.savedState",
    "~/Library/WebKit/com.anataw12.vrc-get",
  ]
end
