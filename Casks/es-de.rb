cask "es-de" do
  arch arm: "132900941", intel: "132900999"

  version "3.0.3"
  sha256 arm:   "f410a8e1474d93cbebb0cddb29e7e3a503d4689a7995ed6dc55f74e2dbc30876",
         intel: "fa6d2c108c50763a041467413c4865cb6bfe9c5e0fcd1902aa9b0fb59cfb6cbd"

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
