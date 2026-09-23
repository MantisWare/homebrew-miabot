cask "miabot" do
  version "0.1.58"
  sha256 "f8abe72a59a0bd910b088cfe33fa05e96e318f329fec61577b5f0815116dd034"

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
