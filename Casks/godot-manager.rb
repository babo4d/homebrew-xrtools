cask "godot-manager" do
  version "0.2.7"
  sha256 "f84804ad415875a9c30521ebaa9623783a06825994ddc32ba2368d5a1b9536c7"

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
