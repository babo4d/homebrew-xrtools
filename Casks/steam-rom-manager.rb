cask "steam-rom-manager" do
  version "2.6.3"
  sha256 "6634a4803a1b685a99ea8d877e7e0822534dc82d957c768fe2ff40ee4e382c3a"

  url "https://github.com/SteamGridDB/steam-rom-manager/releases/download/v#{version}/Steam-ROM-Manager-#{version}.dmg"
  name "Steam ROM Manager"
  desc "Tool for adding non-Steam games to Steam in bulk"
  homepage "https://steamgriddb.github.io/steam-rom-manager/"

  depends_on macos: :ventura

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
