cask "eden" do
  version "0.2.0-rc2"
  sha256 "6987944af48380667c716a55b237620872d8402c98acd8f84346d278d87331cb"

  url "https://git.eden-emu.dev/eden-emu/eden/releases/download/v#{version}/Eden-macOS-v#{version}.tar.gz"
  name "Eden Emulator"
  desc "Nintendo Switch emulator"
  homepage "https://eden-emu.dev/"

  livecheck do
    url "https://git.eden-emu.dev/eden-emu/eden.git"
    regex(/v?(\d+(?:\.\d+)+[-\w]*)/i)
    strategy :git
  end

  app "eden.app"

  # zap trash: []
end
