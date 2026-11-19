cask "makit" do
  version "0.2.21"
  sha256 "a59c38de36c2bb75eca39d6267e3350cc7004f0be3500f3b8637036622624905"

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
