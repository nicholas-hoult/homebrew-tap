cask "makit" do
  version "0.2.6"
  sha256 "8bc7699cedbe480e343c3f1abf47152eaf5f5062413244183c93c5749c3126f5"

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
