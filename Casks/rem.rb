cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.6"
  sha256 arm:   "c0b545ce0d36de4c9478af5e77d48b217f3787d629778b01ef6fa237097c1a54",
         intel: "377616c64e794a0ec7407ba46aa5c57d331b46bd2e4b43b6974117168d42b08c"

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
