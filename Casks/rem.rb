cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.5"
  sha256 arm:   "cb1ff81aade12f2661521ebde84bc9608a2456a30f9fb2f69505e729ef6c2d63",
         intel: "92fae7ff96d2d618f0629f93c2b8ec33a6dcff0e642efd5525566d2ec7ab2714"

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
