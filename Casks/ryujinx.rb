cask "ryujinx" do
  version "1.1.1403"
  sha256 "07083574edf1a4a19d0ef4c82ef1baa07cca8465395350a750073f083d0c4053"

  url "https://archive.org/download/ryujinx-1.1.1403_202410/ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "archive.org/download/ryujinx-1.1.1403_202410/"
  name "Ryujinx"
  desc "Experimental Nintendo Switch Emulator written in C#"
  homepage "https://www.ryujinx.org/"

  livecheck do
    skip "Legacy version"
  end

  app "Ryujinx.app"

  zap trash: [
    "~/Library/Application Support/Ryujinx",
    "~/Library/Logs/Ryujinx",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
  ]
end
