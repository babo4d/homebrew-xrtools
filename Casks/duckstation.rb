cask "duckstation" do
  version "0.1-9226"
  sha256 "5a56c5ad877aac48d9a0bf430ff369e8854553d296d49ac767f0649834b3d08e"

  url "https://github.com/stenzek/duckstation/releases/download/v#{version}/duckstation-mac-release.zip",
      verified: "github.com/stenzek/duckstation/"
  name "DuckStation"
  desc "PS1 emulator"
  homepage "https://www.duckstation.org/"

  app "DuckStation.app"

  zap trash: [
    "~/Library/Application Support/DuckStation",
    "~/Library/Preferences/com.github.stenzek.duckstation.plist",
    "~/Library/Saved Application State/com.github.stenzek.duckstation.savedState",
  ]
end
