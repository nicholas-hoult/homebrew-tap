cask "makit" do
  version "0.2.25"
  sha256 "48ef734ab21d86d1e416b6f8ef90c0dda6aea30a0e3dc2affe03b97f5dd56b7b"

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
