cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "24439ab1fd8bbc5ec7b98978d61d5add666114c4d5a8b29b91cd70b7b5dfe210",
         intel: "381e396d1d2b796868c2a011721af365dfa225a65db917052e9d4b21832afc47"

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
