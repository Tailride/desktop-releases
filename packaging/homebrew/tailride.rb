cask "tailride" do
  version "0.5.3"
  sha256 "453b72ea1fe1cb76e52e64725355262e4bd9c378e21738173116618a71aeadc8"

  url "https://github.com/Tailride/desktop-releases/releases/download/v#{version}/Tailride-#{version}-universal.dmg",
      verified: "github.com/Tailride/desktop-releases/"
  name "Tailride"
  desc "Collects invoices from supplier portals, Proton Mail and folders on a schedule"
  homepage "https://tailride.so/desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Tailride.app"

  zap trash: [
    "~/Library/Application Support/Tailride",
    "~/Library/Preferences/so.tailride.desktop.plist",
    "~/Library/Logs/Tailride",
  ]
end
