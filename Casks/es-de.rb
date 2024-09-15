cask "es-de" do
  arch arm: "147580748", intel: "147580830"

  version "3.1.0"
  sha256 arm:   "cf73be47332aa7fc09441ccf02f9becd761c8f77357f5e5ef6dc7c6f1d7eb128",
         intel: "3f7e687fb1d3a048c0893b92fc976da56eee5665138d4933194808f6ce09538f"

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
