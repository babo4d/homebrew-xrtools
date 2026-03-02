cask "eden" do
  version "0.2.0-rc1"
  sha256 "c1fec63d61d9346eb69e3bc63fcd1610b879df1f9ef492e83cd9e27aa081f654"

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
