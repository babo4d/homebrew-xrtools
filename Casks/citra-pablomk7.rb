cask "citra-pablomk7" do
  version "20240717,518f723"
  sha256 "560688a3aa8a0af55c809b41e2af1d1df050668bf748511c3e09eec8b75d3e03"

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
