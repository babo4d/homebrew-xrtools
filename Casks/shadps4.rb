cask "shadps4" do
  version "0.8.0"
  sha256 "df1bec78971b2aa652c086af3b4ab072aa6623a8f40f558d64e45816064da592"

  url "https://github.com/shadps4-emu/shadPS4/releases/download/v.#{version}/shadps4-macos-qt-#{version}.zip",
      verified: "github.com/shadps4-emu/"
  name "shadPS4"
  desc "PS4 emulator written in C++"
  homepage "https://shadps4.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "shadps4.app"

  zap trash: [
    "~/Library/Application Support/shadPS4",
    "~/Library/Preferences/com.yourcompany.shadps4.plist",
    "~/Library/Saved Application State/com.yourcompany.shadps4.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
