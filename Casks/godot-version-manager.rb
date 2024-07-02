cask "godot-version-manager" do
  version "1.17"
  sha256 "23f8d5089dc597beb33b60fe1c3c94d21b4f8b85dd5a0089801e89af5d8be125"

  url "https://github.com/noidexe/godot-version-manager/releases/download/v#{version}/Godot.Version.Manager.v#{version}-osx.zip"
  name "Godot Version Manager"
  desc "Download, Install and Manage any version of Godot Engine"
  homepage "https://github.com/noidexe/godot-version-manager"

  app "Godot Version Manager.app"

  zap trash: "~/Library/Application Support/Godot/app_userdata/Godot Version Manager"
end
