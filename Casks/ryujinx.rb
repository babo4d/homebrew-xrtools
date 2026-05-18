cask "ryujinx" do
  version "1.3.3"
  sha256 "e4818bb84c98e0d3120691821e90772099e46101273d3f145ffdb10eee2c0dbb"

  url "https://git.ryujinx.app/projects/Ryubing/releases/download/#{version}/ryujinx-#{version}-macos_universal.app.tar.gz"
  name "Ryujinx"
  desc "Nintendo Switch Emulator written in C#"
  homepage "https://ryujinx.app/"

  livecheck do
    url "https://git.ryujinx.app/projects/Ryubing/releases/latest"
    strategy :header_match
  end

  depends_on macos: :monterey

  app "Ryujinx.app"

  zap trash: [
    "~/Library/Application Support/Ryujinx",
    "~/Library/Logs/Ryujinx",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
  ]
end
