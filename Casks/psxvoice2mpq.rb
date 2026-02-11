cask "psxvoice2mpq" do
  version "0.0.0"
  sha256 :no_check

  url "https://github.com/bubio/PSXVoice2MPQ/releases/download/v#{version}/PSXVoice2MPQ-macOS.dmg"
  name "PSXVoice2MPQ"
  desc "Convert PlayStation 1 voice files to MPQ format for DevilutionX"
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
