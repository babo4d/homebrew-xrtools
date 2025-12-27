cask "eden" do
  version "0.0.4"
  sha256 "fd094f0d50f3fd08c5a0709aba8a2aeab7309b11c052427a4823fd1ff4c00a5f"

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
