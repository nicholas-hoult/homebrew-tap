cask "makit" do
  version "0.2.5"
  sha256 "4c4708328d5410acd0aa92697cb36024a35f19b24c3879ef442208c6c3d8cade"

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

  # Not signed or notarized yet (#262): drop the quarantine flag so Gatekeeper lets the first launch through
  postflight_steps do
    run "/usr/bin/xattr", args:         ["-dr", "com.apple.quarantine", "{{appdir}}/makit.app"],
                          must_succeed: false
  end

  zap trash: "~/.claude/makit"
end
