cask "vrcx-0" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.35.0"
  sha256 arm:   "f9ce8bda9022ff2186a771f54857ea15200cc2efd1d3f340cbdc840a6c7fade3",
         intel: "488c05f631ba7a0d2362f257efcac8b7b75ee5dbd9fff2048f3f44566ac7286a"

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
