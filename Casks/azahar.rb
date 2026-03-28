cask "azahar" do
  version "2125.0.1"
  sha256 "6fb944597cedb865be5dd0ac6d217b4e7137c27006668258dbe3a83297ae27af"

  url "https://github.com/azahar-emu/azahar/releases/download/#{version}/azahar-macos-universal-#{version}.zip",
      verified: "github.com/azahar-emu/azahar/"
  name "Azahar"
  desc "Nintendo 3DS emulator"
  homepage "https://azahar-emu.org/"

  depends_on macos: ">= :ventura"

  app "azahar-macos-universal-#{version}/Azahar.app"

  zap trash: [
    "~/Library/Application Support/Azahar",
    "~/Library/Preferences/org.azahar-emu.azahar.plist",
    "~/Library/Saved Application State/org.azahar-emu.azahar.savedState",
  ]
end
