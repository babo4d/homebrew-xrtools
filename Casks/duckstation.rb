cask "duckstation" do
  version "0.1-9787"
  sha256 "96d709e68a17ebbfdd57cf940bc9fcfa00651c0e4047037e12f7b934c49a0d19"

  url "https://github.com/stenzek/duckstation/releases/download/v#{version}/duckstation-mac-release.zip",
      verified: "github.com/stenzek/duckstation/"
  name "DuckStation"
  desc "PS1 emulator"
  homepage "https://www.duckstation.org/"

  depends_on macos: ">= :big_sur"

  app "DuckStation.app"

  zap trash: [
    "~/Library/Application Support/DuckStation",
    "~/Library/Preferences/com.github.stenzek.duckstation.plist",
    "~/Library/Saved Application State/com.github.stenzek.duckstation.savedState",
  ]
end
