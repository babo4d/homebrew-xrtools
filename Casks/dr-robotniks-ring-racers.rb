cask "dr-robotniks-ring-racers" do
  version "2.4"
  sha256 "0b2c35b2349b41d26bb85fc3c5ac553755e3b884d2a81c12d4e2d9d69a1c4c7a"

  url "https://github.com/KartKrewDev/RingRacers/releases/download/v#{version}/Dr.Robotnik.s-Ring-Racers-v#{version}.dmg",
      verified: "github.com/KartKrewDev/RingRacers/"
  name "Dr. Robotnik's Ring Racers"
  desc "Technical Kart Racer based on Sonic Robo Blast 2"
  homepage "https://www.kartkrew.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Dr. Robotnik's Ring Racers.app"

  zap trash: "~/ringracers"
end
