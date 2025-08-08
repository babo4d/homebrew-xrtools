cask "godot-version-manager" do
  version "1.17.2"
  sha256 "7e8a40d06b7492900904a943087460da71d428ca62b0ebef999e01cf75bb9e45"

  url "https://github.com/noidexe/godot-version-manager/releases/download/v#{version}/Godot.Version.Manager.v#{version}-osx.zip"
  name "Godot Version Manager"
  desc "Download, Install and Manage any version of Godot Engine"
  homepage "https://github.com/noidexe/godot-version-manager"

  app "Godot Version Manager.app"

  zap trash: "~/Library/Application Support/Godot/app_userdata/Godot Version Manager"
end
