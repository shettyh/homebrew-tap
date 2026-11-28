cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.32.0"
  sha256 arm:   "01ca0c38f9db8e05fd1db024f85413cb94504f6043578cd0c63fdce46c3a4673",
         intel: "18601c3e6861f4a2e33b2c290c6affe965f2ef1f849b095a4e2bcf6f7f1ecdd0"

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
