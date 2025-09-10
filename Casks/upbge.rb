cask "upbge" do
  arch arm: "arm", intel: "x86_64"

  version "0.44"
  sha256 arm:   "996b726adef16c4ff6b8b3740cc82872abdf3bfee46efbecc7ea56651c119c9f",
         intel: "3cc1b4ab2e531715cfae479d89f620feb3ef9c583538dc6ddaf331ac35889eca"

  url "https://github.com/UPBGE/upbge/releases/download/v#{version}/upbge-#{version}-macos-#{arch}.dmg",
      verified: "github.com/UPBGE/upbge/"
  name "UPBGE"
  desc "Uchronia Project Blender Game Engine"
  homepage "https://upbge.org/"

  livecheck do
    url :url
    strategy :github_releases
  end

  # Rename to avoid conflict with blender
  app "Blender.app", target: "UPBGE.app"

  zap trash: [
    "~/Library/Application Support/UPBGE",
    "~/Library/Saved Application State/org.upbgeteam.upbge.savedState",
  ]
end
