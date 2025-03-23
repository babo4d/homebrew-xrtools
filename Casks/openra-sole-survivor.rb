cask "openra-sole-survivor" do
  version "20250308,release"
  sha256 "a00871bbad9162a9bd3295c60b91810f2af8a768f5d423b0114812a10be9bb82"

  url "https://github.com/MustaphaTR/sole-survivor/releases/download/#{version.csv.second}-#{version.csv.first}/SoleSurvivor-#{version.csv.second}-#{version.csv.first}.dmg"
  name "OpenRA - Sole Survivor"
  desc "Sole Survivor mod for OpenRA"
  homepage "https://github.com/MustaphaTR/sole-survivor"

  livecheck do
    url :url
    regex(/^(\w+)-(\d+)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "OpenRA - Sole Survivor.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.ss.savedState",
  ]
end
