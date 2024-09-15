cask "cemu-project" do
  version "2.2"
  sha256 "f71c89382350d11fc49ab5373b55544310d25b752d82e67707c258692ae27429"

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
