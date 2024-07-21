cask "openra-romanovs-vengeance" do
  version "playtest-20240218"
  sha256 "d5bcea44634bb8335550c3cc1ff6566b54ac7b0699b5895c5dfd3e5bb9cf2025"

  url "https://github.com/MustaphaTR/Romanovs-Vengeance/releases/download/#{version}/Romanovs.Vengeance-#{version}.dmg",
      verified: "github.com/MustaphaTR/Romanovs-Vengeance/"
  name "OpenRA - Romanov's Vengeance"
  desc "OpenRA mod based on Command & Conquer: Red Alert 2"
  homepage "https://www.moddb.com/mods/romanovs-vengeance"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^(\w+(?:[.-]v?\d+)*)$/i)
  end

  app "OpenRA - Romanovs Vengeance.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.rv.savedState",
  ]
end
