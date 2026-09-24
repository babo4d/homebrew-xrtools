cask "azahar" do
  version "2126.1.2"
  sha256 "085653f1a4c1879aef98235a0f258b1333e4a3a5e5a7e8bafe1ccddc952bb75d"

  url "https://github.com/azahar-emu/azahar/releases/download/#{version}/azahar-macos-universal-#{version}.zip"
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
