cask "godothub" do
  version "1.3.9"
  sha256 "85848005a199b33e3514c637fc8e6f76fd5c6e9240cd3c046c5d8a40a88e15ea"

  url "https://github.com/RykoTheDev/GodotHub/releases/download/v#{version}/GodotHub_#{version}_universal.dmg"
  name "GodotHub"
  desc "Ultimate Project Manager for Godot Engine"
  homepage "https://github.com/RykoTheDev/GodotHub"

  depends_on :macos

  app "GodotHub.app"
end
