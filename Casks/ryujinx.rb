cask "ryujinx" do
  version "1.3.1"
  sha256 "387a50851fafcf4e9dc863221b7bee608cb42cb59613a53be67e8ebeb37060f1"

  url "https://github.com/Ryubing/Stable-Releases/releases/download/#{version}/ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/Ryubing/Stable-Releases/"
  name "Ryujinx"
  desc "Nintendo Switch Emulator written in C#"
  homepage "https://ryujinx.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Ryujinx.app"

  zap trash: [
    "~/Library/Application Support/Ryujinx",
    "~/Library/Logs/Ryujinx",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
  ]
end
