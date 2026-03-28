cask "shadps4qtlauncher" do
  version "224"
  sha256 "18bd1ea0af56b7b160f866456d45614f49780eb8978d9ab2cadbe089e846b70b"

  url "https://github.com/shadps4-emu/shadps4-qtlauncher/releases/download/v#{version}/shadPS4QtLauncher-macos-qt-v#{version}.zip",
      verified: "github.com/shadps4-emu/"
  name "shadPS4 Qt Launcher"
  desc "Qt launcher for shadps4 emulator"
  homepage "https://shadps4.net/"

  livecheck do
    url :url
    strategy :git
  end

  depends_on macos: ">= :sequoia"

  app "shadPS4QtLauncher.app"

  # zap trash: []
end
