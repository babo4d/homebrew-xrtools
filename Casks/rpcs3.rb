cask "rpcs3" do
  folder_suffix = on_arch_conditional arm: "mac-arm64", intel: "mac"

  version "0.0.39-18648,49bcc930727ced0ea935155f8ef8bf4a4ce4e6e1"
  sha256 arm:   "A44D0C26B27D7F10C81DA4BBD19195C8B23AA6C13173B4A66EA1A8EEC59716A3",
         intel: "BDCD6AD8A655C9715915E74379BEC55C6BB38A3E3041B33C7A9A306B1C9ABB77"

  url "https://github.com/RPCS3/rpcs3-binaries-#{folder_suffix}/releases/download/build-#{version.csv.second}/rpcs3-v#{version.csv.first}-#{version.csv.second[0..7]}_macos.7z",
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

  depends_on macos: ">= :sonoma"

  app "RPCS3.app"

  zap trash: [
    "~/Library/Application Support/rpcs3",
    "~/Library/Caches/rpcs3",
    "~/Library/Preferences/net.rpcs3.rpcs3.plist",
    "~/Library/Saved Application State/net.rpcs3.rpcs3.savedState",
  ]
end
