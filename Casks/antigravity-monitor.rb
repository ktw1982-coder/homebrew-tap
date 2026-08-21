cask "antigravity-monitor" do
  version "1.6.0"
  sha256 "ba664cbdbe5e2bb30f2e7e67ca1aff0848fef1f9c6bbaaa60bda51826e5ab320"

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
