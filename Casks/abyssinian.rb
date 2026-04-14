cask "abyssinian" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/k-ymmt/homebrew-Abyssinian-releases/releases/latest/download/Abyssinian-#{version}.zip"
  name "Abyssinian"
  desc "Cross-platform markdown note-taking app"
  homepage "https://k-ymmt.github.io/homebrew-Abyssinian-releases/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "AbyssinianMac.app"

  zap trash: [
    "~/Library/Application Support/AbyssinianMac",
    "~/Library/Caches/app.kymmt.AbyssinianMac",
    "~/Library/HTTPStorages/app.kymmt.AbyssinianMac",
    "~/Library/Preferences/app.kymmt.AbyssinianMac.plist",
  ]
end
