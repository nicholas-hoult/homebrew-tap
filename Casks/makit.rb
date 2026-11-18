cask "makit" do
  version "0.2.18"
  sha256 "23e562dd704644b08fd7d93e4d8c5a596d465181cb05ab05005d3ed120433b0d"

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
