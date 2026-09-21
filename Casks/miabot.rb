cask "miabot" do
  version "0.1.6"
  sha256 "6a10a5a1997b4165a2ff0efdb5fe7fcf08eb8ad91b068bd6748559a46cc72f64"

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
