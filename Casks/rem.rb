cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.4"
  sha256 arm:   "cb74d01ff9b2c2c61e7adf7c2a4eb13784c0a48047f7f0c4c5b46cf87609bbb7",
         intel: "d85f301280937758c712e26de9cf1ccc16715d8b6a3a16c172c79dbc212424ac"

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
