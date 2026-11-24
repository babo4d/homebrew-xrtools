cask "duckstation" do
  version "0.1-12640"
  sha256 "ccffb8befadbe8052f468383f2ce9aa6d8f4a82f2e3a9aceebbad6e3f59dc0ce"

  url "https://github.com/stenzek/duckstation/releases/download/v#{version}/duckstation-mac-release.zip"
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
