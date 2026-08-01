cask "antigravity-monitor" do
  version "1.4.0"
  sha256 "3a10855f61326a9a944888bcd83048880552ab897bff0f843ac4c06eb405c0f2"

  url "https://github.com/ktw1982-coder/antigravity-usage-extension/releases/download/v#{version}/AntigravityMonitor-v#{version}-macOS.zip"
  name "Antigravity Monitor"
  desc "Real-time macOS menu bar app for Google Antigravity model quota usage"
  homepage "https://github.com/ktw1982-coder/antigravity-usage-extension"

  app "AntigravityMonitor.app"

  zap trash: [
    "~/Library/LaunchAgents/com.taewoong.AntigravityMonitor.plist",
    "~/Library/Preferences/com.taewoong.AntigravityMonitor.plist",
  ]
end
