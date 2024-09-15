cask "openra-sole-survivor" do
  version "20231105,release"
  sha256 "a6a2a2243f64cbc6a5ebec03819fa73cf2b145294a6b8141281e573a32b0ae9c"

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
