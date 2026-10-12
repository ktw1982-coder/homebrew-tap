cask "antigravity-monitor" do
  version "1.6.6"
  sha256 "2a6afbc7d44f928a6484aa13ac13b74e06d73afa883a0d194ea4ea6a5567a943"

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
