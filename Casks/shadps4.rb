cask "shadps4" do
  version "0.10.0"
  sha256 "844a1504bc8157343650af14b2fcc488a8ce2aacfcf0bbd664cd462fd3daba4b"

  url "https://github.com/shadps4-emu/shadPS4/releases/download/v.#{version}/shadps4-macos-qt-#{version}.zip",
      verified: "github.com/shadps4-emu/"
  name "shadPS4"
  desc "PS4 emulator written in C++"
  homepage "https://shadps4.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "shadps4.app"

  zap trash: [
    "~/Library/Application Support/shadPS4",
    "~/Library/Preferences/com.yourcompany.shadps4.plist",
    "~/Library/Saved Application State/com.yourcompany.shadps4.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
