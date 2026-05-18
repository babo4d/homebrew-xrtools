cask "steam-rom-manager" do
  version "2.5.34"
  sha256 "fd929377ce9d9324375e9207293f963e198a2d2f4b46851658c963ca10b57911"

  url "https://github.com/SteamGridDB/steam-rom-manager/releases/download/v#{version}/Steam-ROM-Manager-#{version}.dmg",
      verified: "github.com/SteamGridDB/steam-rom-manager/"
  name "Steam ROM Manager"
  desc "Tool for adding non-Steam games to Steam in bulk"
  homepage "https://steamgriddb.github.io/steam-rom-manager/"

  depends_on :macos

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
