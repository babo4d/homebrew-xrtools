cask "godothub" do
  version "1.4.5"
  sha256 "5fe659d68226bb1957a99c9d6126657cb438778fc98572b3f082048c5c96d001"

  url "https://github.com/RykoTheDev/GodotHub/releases/download/v#{version}/GodotHub-#{version}-darwin-universal.dmg"
  name "GodotHub"
  desc "Ultimate Project Manager for Godot Engine"
  homepage "https://github.com/RykoTheDev/GodotHub"

  depends_on :macos

  app "GodotHub.app"
end
