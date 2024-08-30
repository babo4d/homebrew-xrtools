cask "openra-generals-alpha" do
  version "gen-20240829"
  sha256 "2e9ab3116ae8cc9a553831eb6dd78f583fde7889c94c3a964a185250e23e558f"

  url "https://github.com/MustaphaTR/Generals-Alpha/releases/download/#{version}/GeneralsAlpha-#{version}.dmg",
      verified: "github.com/MustaphaTR/Generals-Alpha/"
  name "OpenRA - Generals Alpha"
  desc "OpenRA mod that recreates Command & Conquer: Generals on OpenRA engine"
  homepage "https://www.moddb.com/mods/generals-alpha"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^(\w+(?:[.-]v?\d+)*)$/i)
  end

  app "OpenRA - Generals Alpha.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.gen.savedState",
  ]
end
