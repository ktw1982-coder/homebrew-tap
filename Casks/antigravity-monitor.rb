cask "antigravity-monitor" do
  version "1.6.0"
  sha256 "d85129631f92e38e600d4eec02a7633dcd7a276c5aa7df26a564bdd66f53ce8f"

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
