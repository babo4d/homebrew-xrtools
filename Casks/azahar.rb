cask "azahar" do
  version "2125.1.2"
  sha256 "e6e0e51ce100165ea9b82fe171887a7a7819fc282b1ccb8c9e976f62b5c8e30b"

  url "https://github.com/azahar-emu/azahar/releases/download/#{version}/azahar-macos-universal-#{version}.zip",
      verified: "github.com/azahar-emu/azahar/"
  name "Azahar"
  desc "Nintendo 3DS emulator"
  homepage "https://azahar-emu.org/"

  depends_on macos: :ventura

  app "azahar-macos-universal-#{version}/Azahar.app"

  zap trash: [
    "~/Library/Application Support/Azahar",
    "~/Library/Preferences/org.azahar-emu.azahar.plist",
    "~/Library/Saved Application State/org.azahar-emu.azahar.savedState",
  ]
end
