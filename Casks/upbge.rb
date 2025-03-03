cask "upbge" do
  version "0.36.1"
  sha256 "692bf5e5122ff59ed64304ddf8181129860e4d8b4279899599f60fa636d6ceea"

  url "https://github.com/UPBGE/upbge/releases/download/v#{version}/upbge-#{version}-macOS-x86_64.dmg",
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

  caveats do
    requires_rosetta
  end
end
