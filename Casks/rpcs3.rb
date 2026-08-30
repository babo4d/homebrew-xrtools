cask "rpcs3" do
  file_suffix = on_arch_conditional arm: "macos_aarch64", intel: "macos"
  folder_suffix = on_arch_conditional arm: "mac-arm64", intel: "mac"

  version "0.0.42-19845,03d03b2bb4440c4065ef8be793ed0bdcf97a3a4f"
  sha256 arm:   "fe90eafa8ca745f6bed8f4aa7aaaf3c31c27f2d2516c83b47ae3dd580b33667e",
         intel: "a71c70c6687b352f494658a5fed522d24507e51ad21da2bffdb919ca0db69350"

  url "https://github.com/RPCS3/rpcs3-binaries-#{folder_suffix}/releases/download/build-#{version.csv.second}/rpcs3-v#{version.csv.first}-#{version.csv.second[0..7]}_#{file_suffix}.7z",
      verified: "github.com/RPCS3/"
  name "RPCS3"
  desc "PS3 emulator"
  homepage "https://rpcs3.net/"

  livecheck do
    url "https://api.github.com/repos/RPCS3/rpcs3-binaries-mac/releases/latest"
    regex(%r{.*/releases/download/build-(.+)/rpcs3-v(\d+\.\d+\.\d+-\d+)-(.+)_macos.7z}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  depends_on macos: :sonoma

  app "RPCS3.app"

  zap trash: [
    "~/Library/Application Support/rpcs3",
    "~/Library/Caches/rpcs3",
    "~/Library/Preferences/net.rpcs3.rpcs3.plist",
    "~/Library/Saved Application State/net.rpcs3.rpcs3.savedState",
  ]
end
