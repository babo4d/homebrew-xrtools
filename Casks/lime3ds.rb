cask "lime3ds" do
  version "2117.1"
  sha256 "56ff33caf6b4680c0e11cc170d283d352848a41d345ff5ff52c0beaea5705095"

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
