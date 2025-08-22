cask "vrcx" do
  version "2025.08.17"
  sha256 "4745fd128ebc6a10b965c7fbb2388848b8791eabd941085a027723a02b398027"

  url "https://github.com/vrcx-team/VRCX/releases/download/v#{version}/VRCX_#{version.no_dots}.dmg"
  name "VRCX"
  desc "Friendship management tool for VRChat"
  homepage "https://github.com/vrcx-team/VRCX"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "dotnet-runtime-x64"

  app "VRCX.app"

  zap trash: [
    "~/Library/Application Support/VRCX",
    "~/Library/Preferences/app.vrcx.plist",
  ]

  caveats do
    requires_rosetta
    <<~EOS
      Requires dotnet for x64 (Intel)
        https://dotnet.microsoft.com/en-us/download
    EOS
  end
end
