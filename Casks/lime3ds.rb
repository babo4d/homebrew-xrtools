cask "lime3ds" do
  version "2116"
  sha256 "a406ae3df6ca7408d7f56597969af68d6cd31f3d41dfc49e887c4ce79030e137"

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
