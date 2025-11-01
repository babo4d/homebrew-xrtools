cask "melonloader-installer" do
  version "4.2.1"
  sha256 "04cbbc9188b23b2ce2ba5d5ddc0fae59411714c5bdc34c7d0a8e3eff16303991"

  url "https://github.com/LavaGang/MelonLoader.Installer/releases/download/#{version}/MelonLoader.Installer.MacOS.zip"
  name "MelonLoader Installer"
  desc "Universal Mod Loader for Unity Games"
  homepage "https://github.com/LavaGang/MelonLoader.Installer"

  livecheck do
    url :url
    strategy :github_latest
  end

  # App artifact fails audit due to missing executable permissions
  # app "MelonLoader Installer.app"
  # Temporary workaround: generic artifact
  artifact "MelonLoader Installer.app", target: "/Applications/MelonLoader Installer.app"

  preflight do
    # Fix executable permissions
    # https://github.com/LavaGang/MelonLoader.Installer/issues/66
    FileUtils.chmod "+x", "#{staged_path}/MelonLoader Installer.app/Contents/MacOS/MelonLoader.Installer.MacOS"
  end

  zap trash: [
    "~/Library/Application Support/MelonLoader Installer",
    "~/Library/Preferences/com.lavagang.melonloader.installer.plist",
  ]
end
