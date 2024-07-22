cask "openra-generals-alpha" do
  version "gen-20230927"
  sha256 "e5480d0498f3f4f3d30f503a8c65e2e08d739ebba4fe6b934cf03cfb9c5eea12"

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
