cask "eden" do
  version "0.2.0"
  sha256 "745811617b7983f0f538e46c71d3637c85c64bccbe640bf6f11af9afd550da22"

  url "https://git.eden-emu.dev/eden-emu/eden/releases/download/v#{version}/Eden-macOS-v#{version}.dmg"
  name "Eden Emulator"
  desc "Nintendo Switch emulator"
  homepage "https://eden-emu.dev/"

  livecheck do
    url "https://git.eden-emu.dev/eden-emu/eden.git"
    regex(/v?(\d+(?:\.\d+)+[-\w]*)/i)
    strategy :git
  end

  depends_on :macos

  app "eden.app"

  # zap trash: []
end
