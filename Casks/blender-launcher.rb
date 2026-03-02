cask "blender-launcher" do
  version "2.6.1"
  sha256 "ca07aecbfbaacb852971a67843099b42daeb85790c4af4f12337223c364142f3"

  url "https://github.com/Victor-IX/Blender-Launcher-V2/releases/download/v#{version}/Blender_Launcher_v#{version}_macos_arm64.zip"
  name "Blender Launcher"
  desc "Standalone client for managing official builds of Blender 3D"
  homepage "https://github.com/Victor-IX/Blender-Launcher-V2"

  depends_on macos: ">= :big_sur"

  app "Blender Launcher.app"

  zap trash: [
    "~/Library/Application Support/Blender Launcher",
    "~/Library/Logs/Blender Launcher",
  ]
end
