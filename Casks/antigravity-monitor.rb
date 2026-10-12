cask "antigravity-monitor" do
  version "1.6.5"
  sha256 "7641ed2500992bb57a771b3b0d34b0ace70b1bc3573e8345a35f3896419c3efe"

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
