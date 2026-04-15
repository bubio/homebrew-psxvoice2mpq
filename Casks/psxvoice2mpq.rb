cask "psxvoice2mpq" do
  version "1.0.2"
  sha256 "0144a9a2538f8f2060bb69956f51a46eb94c4fa94955a26115cb821ef787df9d"

  url "https://github.com/bubio/PSXVoice2MPQ/releases/download/v#{version}/PSXVoice2MPQ-macOS-universal.dmg"
  name "PSXVoice2MPQ"
  desc "Convert PlayStation 1 voice files to MPQ format for Diablo mods"
  homepage "https://github.com/bubio/PSXVoice2MPQ"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PSXVoice2MPQ.app"

  zap trash: [
    "~/Library/Application Support/com.github.bubio.PSXVoice2MPQ",
    "~/Library/Preferences/com.github.bubio.PSXVoice2MPQ.plist",
    "~/Library/Caches/com.github.bubio.PSXVoice2MPQ",
  ]
end
