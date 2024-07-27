cask "dr-robotniks-ring-racers" do
  version "2.3"
  sha256 "02c4bc3f6daae016e4331c7e6408039e8b98dfd9621c0c2bb5d90b0399b225b7"

  url "https://github.com/KartKrewDev/RingRacers/releases/download/v#{version}/Dr.Robotnik.s-Ring-Racers-v#{version}.dmg",
      verified: "github.com/KartKrewDev/RingRacers/"
  name "Dr. Robotnik's Ring Racers"
  desc "Technical Kart Racer based on Sonic Robo Blast 2"
  homepage "https://www.kartkrew.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dr. Robotnik's Ring Racers.app"

  zap trash: "~/ringracers"
end
