cask "nostlan" do
  arch arm: "arm64", intel: "x64"

  version "2.5.x"
  sha256 arm:   "32e067a8c82e5c7ee06f9dd7b50ea92b3e9ec4822376c8eb994ba30c2d87eabc",
         intel: "47b7a4bae91dd54a04eb4f6171a1d72bb25c72a89edd66eab5c4b41f8eded152"

  url "https://github.com/quinton-ashley/nostlan/releases/download/#{version}/nostlan-#{arch}-mac.7z",
      verified: "github.com/quinton-ashley/nostlan/"
  name "Nostlan"
  desc "Game launcher for emulators"
  homepage "https://quinton-ashley.github.io/nostlan-web/"

  app "nostlan.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qashto.nostlan.sfl*",
    "~/Library/Application Support/nostlan",
    "~/Library/Preferences/com.qashto.nostlan.plist",
    "~/Library/Saved Application State/com.qashto.nostlan.savedState",
  ]
end
