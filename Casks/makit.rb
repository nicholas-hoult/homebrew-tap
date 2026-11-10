cask "makit" do
  version "0.2.7"
  sha256 "1f6cc2fce2d267227ac9eb73203caf0a967e74b8bc8c29cb2e53870a7e77b1ee"

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
