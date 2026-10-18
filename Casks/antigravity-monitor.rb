cask "antigravity-monitor" do
  version "1.7.2"
  sha256 "d9a29d7f4ec038cd89003f80830ecff872cdaab5ede20899b0e4e54c64b9dcc3"

  url "https://github.com/ktw1982-coder/antigravity-usage-extension/releases/download/v#{version}/AntigravityMonitor-v#{version}-macOS.zip"
  name "Antigravity Monitor"
  desc "Real-time macOS menu bar app for Google Antigravity model quota usage"
  homepage "https://github.com/ktw1982-coder/antigravity-usage-extension"

  app "AntigravityMonitor.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/AntigravityMonitor.app"]
  end

  zap trash: [
    "~/Library/LaunchAgents/com.taewoong.AntigravityMonitor.plist",
    "~/Library/Preferences/com.taewoong.AntigravityMonitor.plist",
  ]
end
