cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.29.0"
  sha256 arm:   "258f394a27f3c6d68bbab8e50b27ca7a810231ccd8d33d3e2c2530d4f4d09fcf",
         intel: "65fb797ed9287a7fcf3375bb33ebf8472129036828ec159cefaf8ca238a58c09"

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
