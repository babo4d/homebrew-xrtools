cask "godot-version-manager" do
  version "1.17.3"
  sha256 "64adf651554281cb1990803f8cc2e1ade9d90a012803dc2c19f96901b04973d6"

  url "https://github.com/noidexe/godot-version-manager/releases/download/v#{version}/Godot.Version.Manager.v#{version}-osx.zip"
  name "Godot Version Manager"
  desc "Download, Install and Manage any version of Godot Engine"
  homepage "https://github.com/noidexe/godot-version-manager"

  depends_on macos: :big_sur

  app "Godot Version Manager.app"

  zap trash: "~/Library/Application Support/Godot/app_userdata/Godot Version Manager"
end
