cask "vrcx-0" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.30.0"
  sha256 arm:   "4636de4acb908bf22e1dab5dd83c79240e56fddc652110b171e513943ce8fc6b",
         intel: "9121d678ac90a6c11131e04bebb0a1f4920a076e66187d437ee22bd75e3ec569"

  url "https://github.com/Map1en/VRCX-0/releases/download/v#{version}/VRCX-0_#{version}_macos_#{arch}.dmg"
  name "VRCX-0"
  desc "Desktop companion for VRChat based on VRCX"
  homepage "https://github.com/Map1en/VRCX-0"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "VRCX-0.app"
end
