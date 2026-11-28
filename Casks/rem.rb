cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.31.0"
  sha256 arm:   "37de28c5a51e18fcff40fd68ae9985436be1fa30f929d4d64bc327314b0ba4e3",
         intel: "199dfcb51f976049b8dbb8fbab1c695cd902a3a02901fa7c9312553ad4d4e8e9"

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
