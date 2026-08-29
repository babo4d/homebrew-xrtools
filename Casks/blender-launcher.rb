cask "blender-launcher" do
  version "2.7.6"
  sha256 "530bb7818969120c80cdb9b67c435dc1722c671d7387e2b380727688ce75c88e"

  url "https://github.com/Victor-IX/Blender-Launcher-V2/releases/download/v#{version}/Blender_Launcher_v#{version}_macos_arm64.zip"
  name "Blender Launcher"
  desc "Standalone client for managing official builds of Blender 3D"
  homepage "https://github.com/Victor-IX/Blender-Launcher-V2"

  depends_on macos: :big_sur

  app "Blender Launcher.app"

  zap trash: [
    "~/Library/Application Support/Blender Launcher",
    "~/Library/Logs/Blender Launcher",
  ]
end
