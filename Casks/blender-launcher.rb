cask "blender-launcher" do
  version "2.5.3"
  sha256 "06162edc6f9c03feb3ff5e692520d8c086a6805562ec60e1412838b1461cf189"

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
