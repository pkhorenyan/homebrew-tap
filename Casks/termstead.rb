cask "termstead" do
  version "0.9.1"
  sha256 "34aee4c682e0601e6db224b33c8d34eaf651e2daa1a82c5efbce97da73efb18f"

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
