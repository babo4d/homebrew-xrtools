cask "lime3ds" do
  version "2118.2"
  sha256 "8c95759e5f1daad5e957148d1d921c36e01d87b18a3cd1e011a4ff48c6ea1fb4"

  url "https://github.com/Lime3DS/Lime3DS/releases/download/#{version}/lime3ds-#{version}-macos-universal.zip",
      verified: "github.com/Lime3DS/Lime3DS/"
  name "Lime3DS"
  desc "Nintendo 3DS emulator"
  homepage "https://lime3ds.github.io/"

  app "lime3ds-#{version}-macos-universal/lime3ds.app"

  zap trash: [
    "~/Library/Application Support/Lime3DS",
    "~/Library/Preferences/io.github.lime3ds.Lime3DS.plist",
    "~/Library/Saved Application State/io.github.lime3ds.Lime3DS.savedState",
  ]
end
