cask "godot-version-manager" do
  version "1.17.1"
  sha256 "e676df34decdd39914d29a449847d79980a5354420af79f5b504f53c83cb0295"

  url "https://github.com/noidexe/godot-version-manager/releases/download/v#{version}/Godot.Version.Manager.v#{version}-osx.zip"
  name "Godot Version Manager"
  desc "Download, Install and Manage any version of Godot Engine"
  homepage "https://github.com/noidexe/godot-version-manager"

  app "Godot Version Manager.app"

  zap trash: "~/Library/Application Support/Godot/app_userdata/Godot Version Manager"
end
