cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.2"
  sha256 arm:   "c97cc8046015b7d920631b76ab898a0ccaf59bdea418e45bbcc5758e6949ec4a",
         intel: "97eadf6459547a1479bd90cfae84102c18e4a25e0df268ab49c5fffa78dd8a31"

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
