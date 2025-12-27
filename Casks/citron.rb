cask "citron" do
  version "0.12.25"
  sha256 "a0fdddf100da4d502aac29d12ca696644abd54f7f8c8ec26e97c5c211a808b07"

  # hard coded hash for version 0.12.25
  url "https://git.citron-emu.org/Citron/Emulator/releases/download/#{version}/Citron-macOS-stable-01c042048.dmg"
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
