cask "screenalert" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/briangtn/ScreenAlerts/releases/download/v#{version}/ScreenAlert.zip"
  name "ScreenAlert"
  desc "Menu bar app that displays full-screen alerts before calendar events"
  homepage "https://github.com/briangtn/ScreenAlerts"

  depends_on macos: ">= :sonoma"

  app "ScreenAlert.app"

  zap trash: [
    "~/Library/Preferences/com.screenalert.app.plist",
  ]
end
