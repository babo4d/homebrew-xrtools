cask "citra-pablomk7" do
  version "20240927,608383e"
  sha256 "5b5431df9f594c4f46fe636467108537aa82ccd16b0964eb49f9afa4c5ce4201"

  url "https://github.com/PabloMK7/citra/releases/download/r#{version.csv.second}/citra-macos-universal-#{version.csv.first}-#{version.csv.second}.7z",
      verified: "github.com/PabloMK7/citra/"
  name "Citra"
  desc "Nintendo 3DS emulator (PabloMK7 fork)"
  homepage "https://citra-emulator.com/"

  livecheck do
    url :url
    regex(/citra-macos-universal[._-]v?(\d+)[._-](\w+)\.7z/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "head/citra-qt.app"

  zap trash: [
    "~/Library/Application Support/Citra",
    "~/Library/Saved Application State/com.citra-emu.citra.savedState",
  ]
end
