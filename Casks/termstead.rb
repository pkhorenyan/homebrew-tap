cask "termstead" do
  version "0.3.0"
  sha256 "ddd3056d0cd02ce6f5ffb1a063f67e0078eb1d989c036cb591364b46a53c651b"

  url "https://github.com/pkhorenyan/termstead/releases/download/v#{version}/Termstead.dmg"
  name "Termstead"
  desc "Native SSH client with a session tree, jump hosts and SFTP"
  homepage "https://github.com/pkhorenyan/termstead"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Termstead.app"

  zap trash: [
    "~/Library/Application Support/Termstead",
    "~/Library/Preferences/com.pavelkhorenyan.Termstead.plist",
  ]
end
