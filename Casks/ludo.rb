cask "ludo" do
  version "0.17.1"
  sha256 "7eb0e5d0b7bbc87408481230c15922848da750bbf97b8f696c0ac1a38ff4aa57"

  url "https://github.com/libretro/ludo/releases/download/v#{version}/Ludo-OSX-x86_64-#{version}.dmg",
      verified: "github.com/libretro/ludo/"
  name "Ludo"
  desc "Minimalist frontend for emulators"
  homepage "https://ludo.libretro.com/"

  app "Ludo.app"

  zap trash: "~/Library/Application Support/ludo"

  caveats do
    requires_rosetta
  end
end
