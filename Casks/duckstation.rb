cask "duckstation" do
  version "0.1-10365"
  sha256 "931bed98d421d7b85aeb9aa02e83ddf91fbd97aae6f3126554ebc96ce96c7d85"

  url "https://github.com/stenzek/duckstation/releases/download/v#{version}/duckstation-mac-release.zip",
      verified: "github.com/stenzek/duckstation/"
  name "DuckStation"
  desc "PS1 emulator"
  homepage "https://www.duckstation.org/"

  depends_on macos: ">= :ventura"

  app "DuckStation.app"

  zap trash: [
    "~/Library/Application Support/DuckStation",
    "~/Library/Preferences/com.github.stenzek.duckstation.plist",
    "~/Library/Saved Application State/com.github.stenzek.duckstation.savedState",
  ]
end
