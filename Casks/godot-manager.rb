cask "godot-manager" do
  version "0.2.9"
  sha256 "2cf3209d3380713361e023a75dd0acd229e9dba25b715e7f37abd58621df6ce9"

  url "https://github.com/eumario/godot-manager/releases/download/v#{version}/godotmanager-mac-v#{version}.zip"
  name "Godot Manager"
  desc "Project, Version and Addons/Plugins manager for Godot Game Engine"
  homepage "https://github.com/eumario/godot-manager"

  app "Godot Manager.app"

  zap trash: [
    "~/Library/Application Support/Godot-Manager",
    "~/Library/Saved Application State/info.eumario.GodotManager.savedState",
  ]
end
