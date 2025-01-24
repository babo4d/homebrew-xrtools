cask "pcsx2" do
  version "2.2.0"
  sha256 "9b7c50247a45d4aed87ea7a87ce50beb48e00bcaf633d452151945291cc3122a"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macOS-Qt.tar.xz",
      verified: "github.com/PCSX2/pcsx2/"
  name "PCSX2"
  desc "PS2 emulator"
  homepage "https://pcsx2.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PCSX2-v#{version}.app", target: "PCSX2.app"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
    "~/Library/Saved Application State/net.pcsx2.pcsx2.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
