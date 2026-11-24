cask "fx-steam-launcher" do
  version "1.9.15"
  sha256 "c96266e444ec1870974e68a36ab0a19ceffb19f16740cf57735b109048e76363"

  url "https://github.com/fxgl/steamac/releases/download/v#{version}/FX-Steam-Launcher-#{version}.dmg"
  name "FX Steam Launcher"
  desc "Valve's official ARM64 SteamOS in a lightweight VM on Apple Silicon"
  homepage "https://fxgl.github.io/steamac/"

  depends_on macos: :sequoia

  app "FX Steam Launcher.app"
end
