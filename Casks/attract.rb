cask "attract" do
  version "2.6.1"
  sha256 "bc0da14f8b26675c6e58a58a5c7d786431f9d0c21a96719fae31aa93e1b3f27e"

  url "https://github.com/mickelson/attract/releases/download/v#{version}/attract-v#{version}.dmg",
      verified: "github.com/mickelson/attract/"
  name "Attract-Mode"
  desc "Graphical front-end for command-line emulators"
  homepage "https://attractmode.org/"

  app "Attract.app"

  zap trash: [
    "~/.attract",
    "~/Library/Saved Application State/org.attractmode.attract.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
