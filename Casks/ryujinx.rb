cask "ryujinx" do
  version "1.2.78"
  sha256 "7ede71b85925a8db38a27767d997d2d62a0a057b43d05e172b951ae439d8bb47"

  url "https://github.com/Ryubing/Ryujinx/releases/download/1.2.78/ryujinx-#{version}-macos_universal.app.tar.gz"
  name "Ryujinx"
  desc "Nintendo Switch Emulator written in C#"
  homepage "https://github.com/Ryubing/Ryujinx"

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
