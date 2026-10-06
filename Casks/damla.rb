# Homebrew cask for Damla. release.sh fills in the version and the dmg's sha256 and pushes it to the tap
# repository erkamyigitaydin/homebrew-tap, so `brew install --cask erkamyigitaydin/tap/damla` works.
cask "damla" do
  version "0.8.8"
  sha256 "b598120eb5f4dd82aa68e275c3cf96a4a0c8c2427977cd6af2b9c042bbd33b80"

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
