cask "rpcs3" do
  file_suffix = on_arch_conditional arm: "macos_arm64", intel: "macos"
  folder_suffix = on_arch_conditional arm: "mac-arm64", intel: "mac"

  version "0.0.35-17571,583ec5d819c4a28d22e1819252d8d8d3d0c02db4"
  sha256 arm:   "07444dc13a13f240e112dc994b46b83fb842b57344e71da3a7c95b0f7c40e45b",
         intel: "ee8e15351ee52e8cb8985987340b64737ffb84ee645316357492b46d5d138ebb"

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
