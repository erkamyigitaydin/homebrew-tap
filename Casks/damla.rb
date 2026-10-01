# Homebrew cask for Damla. release.sh fills in the version and the dmg's sha256 and pushes it to the tap
# repository erkamyigitaydin/homebrew-tap, so `brew install --cask erkamyigitaydin/tap/damla` works.
cask "damla" do
  version "0.8.4"
  sha256 "0319d69839d76ceba50987f9312f72d3e893a372f6d29f2d4c1e7a7a879dfacd"

  url "https://damla.erkamaydin.com/download/Damla-#{version}.dmg"
  name "Damla"
  desc "Notch companion for now playing, sound, files, clipboard, focus and agents"
  homepage "https://damla.erkamaydin.com"

  livecheck do
    url "https://damla.erkamaydin.com/appcast.xml"
    strategy :sparkle
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
