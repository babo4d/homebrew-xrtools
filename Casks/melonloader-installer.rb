cask "melonloader-installer" do
  version "4.4.0"
  sha256 "0ffccc635d03d16278c3b0f677031dfa62f3f04b37831ca8e87decd481ab9f7c"

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
