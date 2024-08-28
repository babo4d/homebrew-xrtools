cask "citra-pablomk7" do
  version "20240821,5115f64"
  sha256 "e648113da52b1eff5584298499eb20d26fd7de2c745c88a5261f93d51cc8bbb0"

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
