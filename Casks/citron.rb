cask "citron" do
  version "0.11.0"
  sha256 "224d5503c20b9fb23401860ae01ff817dd246afcf12d413b8b4f2cc79ea82a86"

  url "https://git.citron-emu.org/Citron/Emulator/releases/download/#{version}/Citron-macOS-stable-#{version}.dmg"
  name "Citron"
  desc "Advanced Nintendo Switch Emulator"
  homepage "https://citron-emu.org/"

  livecheck do
    url "https://git.citron-emu.org/Citron/Emulator.git"
    strategy :git
  end

  app "citron.app"

  zap trash: "~/Library/Preferences/com.citron-emu.citron.plist"
end
