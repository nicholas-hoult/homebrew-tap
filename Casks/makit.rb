cask "makit" do
  version "0.2.0"
  sha256 "9767c4439b4c9b1d80fb41fe6902be846b74045d503e9f0a4c3f5b282b338782"

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
