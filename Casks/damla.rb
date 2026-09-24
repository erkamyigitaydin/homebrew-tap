# Homebrew cask for Damla. release.sh fills in the version and the dmg's sha256 and pushes it to the tap
# repository erkamyigitaydin/homebrew-tap, so `brew install --cask erkamyigitaydin/tap/damla` works.
cask "damla" do
  version "0.6.1"
  sha256 "fc3096b80df581e177c059aca9cc43641e9b9264124757b3ed8f11bafda558af"

  url "https://github.com/erkamyigitaydin/Damla/releases/download/v#{version}/Damla-#{version}.dmg"
  name "Damla"
  desc "Notch companion for now playing, sound, files, clipboard, focus and agents"
  homepage "https://github.com/erkamyigitaydin/Damla"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Damla.app"

  zap trash: [
    "~/Library/Application Support/Damla",
    "~/Library/Caches/app.local.damla",
    "~/Library/HTTPStorages/app.local.damla",
    "~/Library/Preferences/app.local.damla.plist",
  ]
end
