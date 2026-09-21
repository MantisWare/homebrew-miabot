cask "miabot" do
  version "0.1.6"
  sha256 "1ff6b277755ff9e670c4c569df82dd3bbcafd4642150d6fa98f9ac613349cc19"

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
