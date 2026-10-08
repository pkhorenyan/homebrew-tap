cask "termstead" do
  version "0.1.0"
  sha256 "0b299c607a34fbc7d8f27927e563614e5f45d32aac7d8ba73972129ada0fd8ef"

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
