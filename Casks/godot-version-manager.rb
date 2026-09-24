cask "godot-version-manager" do
  version "1.18"
  sha256 "f7d8870b2cc5b71dd0a1becd065e9ce2161c0011c307b0fb91c972d31ed1d19d"

  url "https://github.com/noidexe/godot-version-manager/releases/download/v#{version}/Godot.Version.Manager.v#{version}-osx.zip"
  name "Godot Version Manager"
  desc "Download, Install and Manage any version of Godot Engine"
  homepage "https://github.com/noidexe/godot-version-manager"

  depends_on :macos

  app "Godot Version Manager.app"

  zap trash: "~/Library/Application Support/Godot/app_userdata/Godot Version Manager"
end
