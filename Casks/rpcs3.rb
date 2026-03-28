cask "rpcs3" do
  file_suffix = on_arch_conditional arm: "macos_aarch64", intel: "macos"
  folder_suffix = on_arch_conditional arm: "mac-arm64", intel: "mac"

  version "0.0.40-19120,51ea735cb5fab5f3ab0dda756f19a753aaa07451"
  sha256 arm:   "B2155ACFAFA6D9F31018BF9681838FD0BBB4EEFE8E431128AE6F5EE2B3DE8FFC",
         intel: "7A5303460729CC30CEA8F5C9760CBF8D7498F47917D52E5D15E340F9B1E2A886"

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

  depends_on macos: ">= :sonoma"

  app "RPCS3.app"

  zap trash: [
    "~/Library/Application Support/rpcs3",
    "~/Library/Caches/rpcs3",
    "~/Library/Preferences/net.rpcs3.rpcs3.plist",
    "~/Library/Saved Application State/net.rpcs3.rpcs3.savedState",
  ]
end
