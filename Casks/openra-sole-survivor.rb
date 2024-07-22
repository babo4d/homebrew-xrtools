cask "openra-sole-survivor" do
  version "release-20231105"
  sha256 "a6a2a2243f64cbc6a5ebec03819fa73cf2b145294a6b8141281e573a32b0ae9c"

  url "https://github.com/MustaphaTR/sole-survivor/releases/download/#{version}/SoleSurvivor-#{version}.dmg"
  name "OpenRA - Sole Survivor"
  desc "Sole Survivor mod for OpenRA"
  homepage "https://github.com/MustaphaTR/sole-survivor"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^(\w+(?:[.-]v?\d+)*)$/i)
  end

  app "OpenRA - Sole Survivor.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.ss.savedState",
  ]
end
