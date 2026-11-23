cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "268cd05b7350ba0eefbd5fee99f35266f53189c75422046d5daa840f2628d1aa",
         intel: "6a221934b85ccb7291fc1755f2ff2221621333000ba1177ee25e6e398870691e"

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
