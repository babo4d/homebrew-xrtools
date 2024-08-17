cask "cemu-project" do
  version "2.0-94"
  sha256 "9f69aa891c608d2f59d41b24754fec97bbc426295da2a0070008d0947faaac53"

  url "https://github.com/cemu-project/Cemu/releases/download/v#{version}/cemu-#{version}-macos-12-x64.dmg",
      verified: "github.com/cemu-project/Cemu/"
  name "Cemu"
  desc "Wii U emulator"
  homepage "https://cemu.info/"

  depends_on macos: ">= :monterey"

  app "Cemu.app"

  zap trash: [
    "~/Library/Application Support/Cemu",
    "~/Library/Caches/Cemu",
    "~/Library/Preferences/info.cemu.Cemu.plist",
    "~/Library/Saved Application State/info.cemu.Cemu.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
