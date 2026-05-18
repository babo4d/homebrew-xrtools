cask "duckstation" do
  version "0.1-11108"
  sha256 "bdd47256d6be4641a0140205eaa0c0e3e795f0b76ec055c88daf87a9c38a03ac"

  url "https://github.com/stenzek/duckstation/releases/download/v#{version}/duckstation-mac-release.zip",
      verified: "github.com/stenzek/duckstation/"
  name "DuckStation"
  desc "PS1 emulator"
  homepage "https://www.duckstation.org/"

  depends_on macos: :ventura

  app "DuckStation.app"

  zap trash: [
    "~/Library/Application Support/DuckStation",
    "~/Library/Preferences/com.github.stenzek.duckstation.plist",
    "~/Library/Saved Application State/com.github.stenzek.duckstation.savedState",
  ]
end
