cask "antigravity-monitor" do
  version "1.3.0"
  sha256 "ad86fe601e4d6aa0c350318f3520a4b1ae75ccbc25214b97c2d642e8d7cd48b7"

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
