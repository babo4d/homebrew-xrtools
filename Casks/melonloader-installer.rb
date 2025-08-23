cask "melonloader-installer" do
  version "4.2.0"
  sha256 "48f5f6ed65be86e6716bba084c1276d8594bf306537bb9eec8064a5b348662fe"

  url "https://github.com/LavaGang/MelonLoader.Installer/releases/download/#{version}/MelonLoader.Installer.MacOS.x64.zip"
  name "MelonLoader Installer"
  desc "Universal Mod Loader for Unity Games"
  homepage "https://github.com/LavaGang/MelonLoader.Installer"

  livecheck do
    url :url
    strategy :github_latest
  end

  # app "MelonLoader Installer.app"
  # Temporary, app artifact fails audit due to missing executable permissions
  artifact "MelonLoader Installer.app", target: "/Applications/MelonLoader Installer.app"

  preflight do
    # Fix executable permissions
    # https://github.com/LavaGang/MelonLoader.Installer/issues/66
    FileUtils.chmod "+x", "#{staged_path}/MelonLoader Installer.app/MelonLoader.Installer.MacOS"
  end

  zap trash: [
    "~/Library/Application Support/MelonLoader Installer",
    "~/Library/Preferences/com.lavagang.melonloader.installer.plist",
  ]

  caveats do
    requires_rosetta
  end
end
