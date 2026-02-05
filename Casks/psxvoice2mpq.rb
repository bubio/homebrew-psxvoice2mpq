cask "psxvoice2mpq" do
    version "1.4"
    sha256 "beb71603b31af7bc0ed056fe6efdbd867e20b3ceb5ced62353daa8d39112b488"

    url "https://github.com/bubio/PSXVoice2MPQ/releases/download/#{version}/PSXVoice2MPQ-macOS-universal.dmg"
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