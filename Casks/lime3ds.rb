cask "lime3ds" do
  version "2115"
  sha256 "6267116e9bb933ebf6d6c834167a9a2175e2eae841e57e03078499fe719949a2"

  url "https://github.com/Lime3DS/Lime3DS/releases/download/#{version}/lime3ds-#{version}-macos-universal.tar.gz",
      verified: "github.com/Lime3DS/Lime3DS/"
  name "Lime3DS"
  desc "Nintendo 3DS emulator"
  homepage "https://lime3ds.github.io/"

  app "lime3ds-#{version}-macos-universal/lime3ds-gui.app"

  zap trash: [
    "~/Library/Application Support/Citra",
    "~/Library/Saved Application State/io.github.lime3ds.Lime3DS.savedState",
  ]
end
