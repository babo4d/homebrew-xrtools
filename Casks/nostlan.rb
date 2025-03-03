cask "nostlan" do
  version "2.6.x"
  sha256 "983d35442ad13e35f842819eb9e030197320574a1e2a3586e618d9620dec5393"

  url "https://github.com/quinton-ashley/nostlan/releases/download/#{version}/nostlan-mac.7z",
      verified: "github.com/quinton-ashley/nostlan/"
  name "Nostlan"
  desc "Game launcher for emulators"
  homepage "https://quinton-ashley.github.io/nostlan-web/"

  depends_on arch: :arm64

  app "nostlan.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qashto.nostlan.sfl*",
    "~/Library/Application Support/nostlan",
    "~/Library/Preferences/com.qashto.nostlan.plist",
    "~/Library/Saved Application State/com.qashto.nostlan.savedState",
  ]
end
