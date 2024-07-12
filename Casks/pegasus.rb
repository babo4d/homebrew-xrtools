cask "pegasus" do
  version "alpha16-51-g6421d7a7,weekly_2023w20"
  sha256 "7ebfb354e6cd80ed259bad83b20149ac4c261d2c3f80037dd89c053424975601"

  url "https://github.com/mmatyas/pegasus-frontend/releases/download/#{version.csv.second}/pegasus-fe_#{version.csv.first}_macos-static.zip",
      verified: "github.com/mmatyas/pegasus-frontend/"
  name "Pegasus"
  desc "Graphical frontend for launching emulators and managing your game collection"
  homepage "https://pegasus-frontend.org/"

  livecheck do
    url "https://api.github.com/repos/mmatyas/pegasus-frontend/releases/latest"
    regex(%r{.*/releases/download/(.+)/pegasus-fe_([\w\d-]+)_macos-static.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  app "Pegasus.app"

  zap trash: [
    "~/Library/Caches/pegasus-frontend",
    "~/Library/Preferences/pegasus-frontend",
    "~/Library/Saved Application State/org.pegasus-frontend.macos.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
