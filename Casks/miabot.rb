cask "miabot" do
  version "0.1.60"
  sha256 "7f2707e3e39e6b377a74f85917e5666d0ad44f2c005d5ecefa027598b9fa2e17"

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
