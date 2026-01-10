cask "upbge" do
  version "0.50"
  sha256 "4e505caf861a2408bdbdd54c8a6e35a2dcba7005aa44b0d75589fa7c45bdb18a"

  url "https://github.com/UPBGE/upbge/releases/download/v#{version}/upbge-#{version}-macos-arm64.dmg",
      verified: "github.com/UPBGE/upbge/"
  name "UPBGE"
  desc "Uchronia Project Blender Game Engine"
  homepage "https://upbge.org/"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: ">= :big_sur"

  # Rename to avoid conflict with blender
  app "Blender.app", target: "UPBGE.app"

  zap trash: [
    "~/Library/Application Support/UPBGE",
    "~/Library/Saved Application State/org.upbgeteam.upbge.savedState",
  ]
end
