cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.30.2"
  sha256 arm:   "f49d04a4b06f9a160c76d0feaa99a1ffd91ed71dbe10804f77d68d47bb9c8ee5",
         intel: "d88ce032863be74ddf2b6cb388768493a77312775113ccc0d5a28688e3db7268"

  url "https://github.com/shettyh/rem/releases/download/v#{version}/rem_#{version}_#{arch}.dmg",
      verified: "github.com/shettyh/rem/"
  name "rem"
  desc "Local-first spaced repetition across desktop, terminal, and iPhone"
  homepage "https://shettyh.github.io/rem/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "rem.app"
  binary "#{appdir}/rem.app/Contents/MacOS/rem"

  zap trash: [
    "~/Library/Application Support/com.shettyh.rem",
    "~/Library/Caches/com.shettyh.rem",
    "~/Library/Preferences/com.shettyh.rem.plist",
    "~/Library/Saved Application State/com.shettyh.rem.savedState",
  ]
end
