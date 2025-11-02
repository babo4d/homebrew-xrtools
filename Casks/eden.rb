cask "eden" do
  version "0.0.4-rc1"
  sha256 "1054684f99c174e1593e0717994bf79acb926474cd320356d9a43eca2b0cd3e1"

  url "https://github.com/eden-emulator/Releases/releases/download/v#{version}/Eden-macOS-v#{version}.tar.gz",
      verified: "github.com/eden-emulator/"
  name "Eden Emulator"
  desc "Nintendo Switch emulator"
  homepage "https://eden-emu.dev/"

  livecheck do
    url "https://github.com/eden-emulator/Releases"
    regex(/v?(\d+(?:\.\d+)+[-\w]*)/i)
    strategy :github_latest
  end

  app "eden.app"

  # zap trash: []
end
