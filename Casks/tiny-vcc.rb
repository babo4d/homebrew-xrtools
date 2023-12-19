cask "tiny-vcc" do
  version "0.6.1"
  sha256 "e76c803204b5a4f97c24e66bb7cb033ecafdd612874b783fe5171ce6a5e35b43"

  url "https://github.com/kurotu/tiny_vcc/releases/download/v#{version}/TinyVCC-v#{version}.dmg"
  name "Tiny VCC"
  desc "Alternative client for VRChat Creator Companion"
  homepage "https://github.com/kurotu/tiny_vcc"

  app "Tiny VCC.app"

  zap trash: [
    "~/Library/Application Support/com.github.kurotu.tiny-vcc",
    "~/Library/Caches/tiny_vcc",
    "~/Library/Saved Application State/com.github.kurotu.tiny-vcc.savedState",
  ]

  caveats <<~EOS
    #{token} requires .NET 6, get it from:
      https://dotnet.microsoft.com/en-us/download/dotnet/6.0
    or
      brew install isen-ng/dotnet-sdk-versions/dotnet-sdk6-0-400

    #{token} requires Unity Hub and an appropriate version of Unity:
      brew install unity-hub

    #{token} requires VPM CLI:
      dotnet tool install --global vrchat.vpm.cli
  EOS
end
