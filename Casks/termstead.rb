cask "termstead" do
  version "0.3.1"
  sha256 "8bbbf0e9cdb8daa005a0dacdae8f8b06fd94a5d895aaa5a37acf96e6e7e0fb7f"

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
