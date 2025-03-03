cask "es-de" do
  arch arm: "164660508", intel: "164660577"

  version "3.1.1"
  sha256 arm:   "be0bc534cd6c48368e31cecf2ee0687c290e85cbdee0bd32cedc661eb73994ec",
         intel: "d9990093914b0f9a3661c82088a909e7bb2c96ee608dce854c95d4ace4811412"

  url "https://gitlab.com/es-de/emulationstation-de/-/package_files/#{arch}/download",
      verified: "gitlab.com/es-de/emulationstation-de/"
  name "EmulationStation Desktop Edition"
  desc "Frontend for browsing and launching games from your multi-platform collection"
  homepage "https://www.es-de.org/"

  livecheck do
    url "https://gitlab.com/es-de/emulationstation-de.git"
  end

  app "ES-DE.app"

  zap trash: [
    "~/ES-DE",
    "~/Library/Saved Application State/org.es-de.Frontend.savedState",
  ]
end
