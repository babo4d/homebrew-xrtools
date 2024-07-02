cask "hourglass" do
  version "0.9.4"
  sha256 :no_check

  url "https://jwestman.gitlab.io/hourglass/hourglass-macos.zip",
      verified: "jwestman.gitlab.io"
  name "Hourglass"
  desc "Project manager for Godot Engine"
  homepage "https://hourglass.jwestman.net/"

  livecheck do
    url "https://gitlab.com/jwestman/hourglass.git"
  end

  app "Hourglass.app"

  zap trash: [
    "~/Library/Application Support/hourglass",
    "~/Library/Saved Application State/net.jwestman.Hourglass.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
