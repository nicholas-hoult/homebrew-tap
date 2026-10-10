cask "makit" do
  version "0.1.4"
  sha256 "529b5446229911dfbfbdc103b8888a426fbec9fcc72b7011ce5b109101d7aa71"

  url "https://github.com/nicholas-hoult/makit/releases/download/v#{version}/makit-#{version}.dmg"
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
