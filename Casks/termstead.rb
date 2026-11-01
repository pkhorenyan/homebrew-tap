cask "termstead" do
  version "0.8.1"
  sha256 "1e1db34238edceec7df702916c219a4caaa9ce637cf41ef86a9a3dbf090671af"

  url "https://github.com/pkhorenyan/termstead/releases/download/v#{version}/Termstead.dmg"
  name "Termstead"
  desc "Native SSH client with a session tree, jump hosts and SFTP"
  homepage "https://github.com/pkhorenyan/termstead"

  auto_updates true
  depends_on macos: :sonoma

  app "Termstead.app"

  zap trash: [
    "~/Library/Application Support/Termstead",
    "~/Library/Preferences/com.pavelkhorenyan.Termstead.plist",
  ]
end
