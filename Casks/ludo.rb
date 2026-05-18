cask "ludo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.22.5"
  sha256 arm:   "eb052ef61b1c0a2d9a3323555dc93ca21ed5026234f4156a330c25a6e9e6d41f",
         intel: "d142086d4bd26202449aa60f1da83c393288798c3fcc8411e3e22095897b374b"

  url "https://github.com/libretro/ludo/releases/download/v#{version}/Ludo-OSX-#{arch}-#{version}.dmg",
      verified: "github.com/libretro/ludo/"
  name "Ludo"
  desc "Minimalist frontend for emulators"
  homepage "https://ludo.libretro.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Ludo.app"

  zap trash: "~/Library/Application Support/ludo"
end
