cask "duckstation" do
  version "0.1-11752"
  sha256 "fedf0a6863210f703b4c71b697e78a17a306121b73f7cd562346c061279351e3"

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
