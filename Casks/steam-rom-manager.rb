cask "steam-rom-manager" do
  version "2.5.22"
  sha256 "77b3facf97c3e54e22b4a5ee72ed5e9fb7d7942a937bbb9c58d7356c9abfd503"

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
