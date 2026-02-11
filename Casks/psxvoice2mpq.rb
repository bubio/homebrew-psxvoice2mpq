cask "psxvoice2mpq" do
  version "1.0.0"
  sha256 "f500087506c87379910ef9ba32a2387969866c17ac4bb30e82f9c1324f3a2a07"

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
