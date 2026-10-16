cask "laperm" do
  version "0.1.0,349"
  sha256 "530d33b38f9cf2f3e7fc16ea0ce2669aedf57c2d4e46c3b2cb3dda395a785ddb"

  url "https://github.com/k-ymmt/homebrew-Laperm-releases/releases/download/v#{version.csv.first}-#{version.csv.second}/Laperm-#{version.csv.first}-#{version.csv.second}.zip"
  name "Laperm"
  desc "Local Markdown editor built around a folder of plain .md files"
  homepage "https://github.com/k-ymmt/homebrew-Laperm-releases"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)-(\d+)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: :tahoe

  app "LapermMac.app", target: "Laperm.app"

  zap trash: [
    "~/Library/Application Scripts/app.kymmt.LapermMac",
    "~/Library/Containers/app.kymmt.LapermMac",
    "~/Library/Saved Application State/app.kymmt.LapermMac.savedState",
  ]
end
