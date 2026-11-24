cask "blender-launcher" do
  version "2.8.2"
  sha256 "0bf35884735e83e6fc5bd4b775f1063cc7c383c7c9b8912b649159a6cf43f7ce"

  url "https://github.com/Victor-IX/Blender-Launcher-V2/releases/download/v#{version}/Blender_Launcher_v#{version}_macos_arm64.zip"
  name "Blender Launcher"
  desc "Standalone client for managing official builds of Blender 3D"
  homepage "https://github.com/Victor-IX/Blender-Launcher-V2"

  depends_on :macos

  app "Blender Launcher.app"

  zap trash: [
    "~/Library/Application Support/Blender Launcher",
    "~/Library/Logs/Blender Launcher",
  ]
end
