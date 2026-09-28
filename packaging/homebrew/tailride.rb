cask "tailride" do
  version "0.9.0"
  sha256 "3feabfeec4c78ea26bf0b94620a6b8d5f7c8ad02ad8c6550666eb46d4a4fa218"

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
