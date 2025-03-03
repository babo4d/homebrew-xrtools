cask "citra-pablomk7" do
  version "20240927,608383e"
  sha256 "5b5431df9f594c4f46fe636467108537aa82ccd16b0964eb49f9afa4c5ce4201"

  url "https://github.com/PabloMK7/citra/releases/download/r#{version.csv.second}/citra-macos-universal-#{version.csv.first}-#{version.csv.second}.7z",
      verified: "github.com/PabloMK7/citra/"
  name "Citra"
  desc "Nintendo 3DS emulator (PabloMK7 fork)"
  homepage "https://citra-emulator.com/"

  deprecate! date: "2024-09-29", because: :discontinued

  app "head/citra-qt.app"

  zap trash: [
    "~/Library/Application Support/Citra",
    "~/Library/Saved Application State/com.citra-emu.citra.savedState",
  ]
end
