cask "makit" do
  version "0.2.16"
  sha256 "c293618c13fdd33a3e8987d53e73b9c16eb3ffd64677e6d2e18c2f04dfd71d01"

  url "https://github.com/nicholas-hoult/makit/releases/download/v#{version}/makit-#{version}-universal.dmg"
  name "makit"
  desc "Native manager for local Claude Code and Codex sessions"
  homepage "https://github.com/nicholas-hoult/makit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "makit.app"

  zap trash: "~/.claude/makit"
end
