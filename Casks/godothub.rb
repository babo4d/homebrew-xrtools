cask "godothub" do
  version "1.4.3"
  sha256 "ef0fd0aa5a9e7da9e081442c5f25731a9562b411c70742ab3a631323c9a37e50"

  url "https://github.com/RykoTheDev/GodotHub/releases/download/v#{version}/GodotHub_#{version}_universal.dmg"
  name "GodotHub"
  desc "Ultimate Project Manager for Godot Engine"
  homepage "https://github.com/RykoTheDev/GodotHub"

  depends_on :macos

  app "GodotHub.app"
end
