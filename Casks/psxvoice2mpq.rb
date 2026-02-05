cask "psxvoice2mpq" do
  version "1.4"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/bubio/PSXVoice2MPQ/releases/download/v#{version}/PSXVoice2MPQ-macOS.dmg"
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
