cask "lime3ds" do
  version "2118"
  sha256 "12e141908425d21a9d78f11f5ff03ca7426a55bfbfd038c0a8fba51671646989"

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
