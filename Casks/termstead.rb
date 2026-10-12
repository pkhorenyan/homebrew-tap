cask "termstead" do
  version "0.1.1"
  sha256 "d4522f7ed54590345b6ea6f08dba1c7b02443df8f6d83bcd828d09e48925a60d"

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
