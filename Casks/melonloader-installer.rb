cask "melonloader-installer" do
  version "4.3.0"
  sha256 "0b3bd7b3573f9074327d136dd9db82c4d3eddfe6739d215fb61975a49602c186"

  url "https://github.com/LavaGang/MelonLoader.Installer/releases/download/#{version}/MelonLoader.Installer.MacOS.dmg"
  name "MelonLoader Installer"
  desc "Universal Mod Loader for Unity Games"
  homepage "https://github.com/LavaGang/MelonLoader.Installer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "MelonLoader Installer.app"

  zap trash: [
    "~/Library/Application Support/MelonLoader Installer",
    "~/Library/Preferences/com.lavagang.melonloader.installer.plist",
  ]
end
