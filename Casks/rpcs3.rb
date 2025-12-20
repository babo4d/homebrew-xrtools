cask "rpcs3" do
  file_suffix = on_arch_conditional arm: "macos_arm64", intel: "macos"
  folder_suffix = on_arch_conditional arm: "mac-arm64", intel: "mac"

  version "0.0.38-18540,f946054a3781b2ca1aa6c82a21d7ab169cee7823"
  sha256 arm:   "47f6826931623311fd637794c372d173b1d7c0f11814310a2c8e7299f14bfce6",
         intel: "9e2e73df4dbe37d8c4abea4a77e44ca20a48a500fa25a5abd590e09e952dc84a"

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

  depends_on macos: ">= :sonoma"

  app "RPCS3.app"

  zap trash: [
    "~/Library/Application Support/rpcs3",
    "~/Library/Caches/rpcs3",
    "~/Library/Preferences/net.rpcs3.rpcs3.plist",
    "~/Library/Saved Application State/net.rpcs3.rpcs3.savedState",
  ]
end
