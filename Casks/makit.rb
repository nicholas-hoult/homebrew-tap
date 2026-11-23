cask "makit" do
  version "0.2.26"
  sha256 "68c7f4e6fdd092f1d4143fb82b580eaf05bb81a6681898c0e5f2838a84359e2b"

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
