cask "shadps4" do
  version "0.5.0"
  sha256 "ed0dc43751219f44167875a74940aec0e6df8e273172cdfc0e774ebfe5c0a6ec"

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
