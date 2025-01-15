cask "lime3ds" do
  version "2119.1"
  sha256 "9a6a10c543fdeda1b6c3c2c13c33e956870edca1c75153e5c1665e02ff6b5e33"

  url "https://github.com/Lime3DS/lime3ds-archive/releases/download/#{version}/lime3ds-#{version}-macos-universal.zip",
      verified: "github.com/Lime3DS/lime3ds-archive/"
  name "Lime3DS"
  desc "Nintendo 3DS emulator"
  homepage "https://lime3ds.github.io/"

  deprecate! date: "2024-11-16", because: :discontinued

  app "lime3ds-#{version}-macos-universal/lime3ds.app"

  zap trash: [
    "~/Library/Application Support/Lime3DS",
    "~/Library/Preferences/io.github.lime3ds.Lime3DS.plist",
    "~/Library/Saved Application State/io.github.lime3ds.Lime3DS.savedState",
  ]
end
