cask "miabot" do
  version "0.1.57"
  sha256 "18f6444cab74c881b5b8c874c5ffb53b22d13c1654b8caad87c1403248bc5d16"

  # Apple Silicon build from the desktop release. The source repository can stay
  # private; this URL must stay reachable without a GitHub login.
  url "https://github.com/mantisware/miabot/releases/download/v#{version}/miaBot-#{version}-arm64.dmg"
  name "miaBot"
  desc "AI teammates you own"
  homepage "https://miabot.mantisware.co.za"

  app "miaBot.app"

  zap trash: [
    "~/Library/Application Support/miaBot",
    "~/Library/Preferences/dev.miabot.desktop.plist",
    "~/Library/Logs/miaBot",
  ]
end
