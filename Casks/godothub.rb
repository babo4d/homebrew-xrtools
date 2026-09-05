cask "godothub" do
  version "1.4.1"
  sha256 "0cc7ec21133d46620e1f4090f9fa079a8b930868556296afc811885b72878b76"

  url "https://github.com/RykoTheDev/GodotHub/releases/download/v#{version}/GodotHub_#{version}_universal.dmg"
  name "GodotHub"
  desc "Ultimate Project Manager for Godot Engine"
  homepage "https://github.com/RykoTheDev/GodotHub"

  depends_on :macos

  app "GodotHub.app"
end
