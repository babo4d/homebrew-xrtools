cask "eden" do
  version "0.0.4-rc2"
  sha256 "2d5aab7df6ec22988330e85909c4f9f370018574ab22d392253ef10b0787a795"

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
