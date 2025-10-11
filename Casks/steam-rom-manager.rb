cask "steam-rom-manager" do
  version "2.5.30"
  sha256 "2b0f34345686d1b3e128b4837e277db00d05ce90535a6ec3692f8305cd31fcd4"

  url "https://github.com/SteamGridDB/steam-rom-manager/releases/download/v#{version}/Steam-ROM-Manager-#{version}.dmg",
      verified: "github.com/SteamGridDB/steam-rom-manager/"
  name "Steam ROM Manager"
  desc "Tool for adding non-Steam games to Steam in bulk"
  homepage "https://steamgriddb.github.io/steam-rom-manager/"

  app "Steam ROM Manager.app"

  zap trash: [
    "~/Library/Application Support/steam-rom-manager",
    "~/Library/Logs/steam-rom-manager",
    "~/Library/Preferences/SteamGridDB.SteamROMManager.plist",
    "~/Library/Saved Application State/SteamGridDB.SteamROMManager.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
