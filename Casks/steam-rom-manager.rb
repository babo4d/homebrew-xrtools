cask "steam-rom-manager" do
  version "2.5.33"
  sha256 "a8d4c7f7a763356bee1fe21be937c6a3a0a5527da5c4927ebf62cfb090f1b777"

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
