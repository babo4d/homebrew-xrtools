cask "pcsx2" do
  version "1.7.5973"
  sha256 "92af2d078cc4af5c27f9f3b41ed1b100e65ec0dc1b0aeccca690921f1cc14bae"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macos-Qt.tar.xz",
      verified: "github.com/PCSX2/pcsx2/"
  name "PCSX2"
  desc "PS2 emulator"
  homepage "https://pcsx2.net/"

  # livecheck do
  #   url :url
  #   regex(/pcsx2[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]Qt\.tar\.xz/i)
  #   strategy :github_latest do |json, regex|
  #     json["assets"]&.map do |asset|
  #       match = asset["name"]&.match(regex)
  #       next if match.blank?

  #       "#{match[1]},#{match[2]}"
  #     end
  #   end
  # end

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
