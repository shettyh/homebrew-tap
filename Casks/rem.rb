cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "85a6fb0d06c76c37b50b7bf2977ab1bdd658c9bfba5d762bed52120dbd1d3305",
         intel: "b770a8f1806ea43c2c4e3ab32bef27f53baa7f9c43defe2a8f2aaa6176200312"

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
