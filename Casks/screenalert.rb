cask "screenalert" do
  version "0.5.1"
  sha256 :no_check

  url "https://github.com/briangtn/ScreenAlerts/releases/download/v#{version}/ScreenAlert.zip"
  name "ScreenAlert"
  desc "Menu bar app that displays full-screen alerts before calendar events"
  homepage "https://github.com/briangtn/ScreenAlerts"

  depends_on macos: ">= :sonoma"

  app "ScreenAlert.app"

  # Automatise la suppression de la quarantaine (Homebrew 5.0+)
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/ScreenAlert.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.screenalert.app.plist",
  ]
end
