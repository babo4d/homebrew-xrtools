cask "godothub" do
  version "1.6.2"
  sha256 "1d278b8ae2abc2b775d069d3297255de778aff52ad67359e429cf9ebbf232a81"

  url "https://github.com/RykoTheDev/GodotHub/releases/download/v#{version}/GodotHub-#{version}-darwin-universal.dmg"
  name "GodotHub"
  desc "Ultimate Project Manager for Godot Engine"
  homepage "https://github.com/RykoTheDev/GodotHub"

  depends_on macos: :monterey

  app "GodotHub.app"
end
