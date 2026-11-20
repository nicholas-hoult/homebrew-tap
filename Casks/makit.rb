cask "makit" do
  version "0.2.24"
  sha256 "f509df7e6b0d0b86f6c389dd5268696c6e5602f6f53d41845f74c02e55a06842"

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
