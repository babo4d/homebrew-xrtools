cask "dotnet-runtime-x64" do
  version "9.0.8"
  sha256 "9696372e82d3a1d3f2fa41b65c4ce31893c3f0f227195838effc0b4d82af3514"

  url "https://builds.dotnet.microsoft.com/dotnet/Runtime/#{version}/dotnet-runtime-#{version}-osx-x64.pkg"
  name ".Net Runtime x64"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  # This identifies releases with the same major/minor version as the current
  # cask version. New major/minor releases occur annually in November and the
  # check will automatically update its behavior when the cask is updated.
  livecheck do
    url "https://builds.dotnet.microsoft.com/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      json["releases"]&.map do |release|
        version = release.dig("runtime", "version")
        next unless version&.match(regex)

        version
      end
    end
  end

  depends_on macos: ">= :ventura"

  # binary "/usr/local/share/dotnet/x64/dotnet"
  pkg "dotnet-runtime-#{version.csv.first}-osx-x64.pkg"

  uninstall pkgutil: "com.microsoft.dotnet.*.x64"

  caveats do
    requires_rosetta
    <<~EOS
      Technically does not conflict with dotnet for arm64, installs to path:
        /usr/local/share/dotnet/x64
    EOS
  end
end
