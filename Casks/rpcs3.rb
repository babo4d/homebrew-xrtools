cask "rpcs3" do
  file_suffix = on_arch_conditional arm: "macos_arm64", intel: "macos"
  folder_suffix = on_arch_conditional arm: "mac-arm64", intel: "mac"

  version "0.0.38-18185,9e49b9100fab7293c5f616f6aebc91799461c26c"
  sha256 arm:   "7ba5f7a2c09602dfddf5e3958bf9dea40889f6391403aa67a43429ae6e48eb30",
         intel: "a8338d4b0f80454411f160193895441dc5a356b0487ae57f7f547f2b700c3451"

  url "https://github.com/RPCS3/rpcs3-binaries-#{folder_suffix}/releases/download/build-#{version.csv.second}/rpcs3-v#{version.csv.first}-#{version.csv.second[0..7]}_#{file_suffix}.7z",
      verified: "github.com/RPCS3/rpcs3-binaries-#{folder_suffix}/"
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

  app "RPCS3.app"

  zap trash: [
    "~/Library/Application Support/rpcs3",
    "~/Library/Caches/rpcs3",
    "~/Library/Preferences/net.rpcs3.rpcs3.plist",
    "~/Library/Saved Application State/net.rpcs3.rpcs3.savedState",
  ]
end
