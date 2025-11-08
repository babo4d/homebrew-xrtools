cask "blender-launcher" do
  version "2.5.2"
  sha256 "c918024fe83d3b15741a9f4ed312312462b2d21430071dc85417190c0484c171"

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
