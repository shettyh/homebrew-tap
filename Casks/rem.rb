cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.30.1"
  sha256 arm:   "bf2e23024eba913c507e6eb9e26c462ffde141af650e67ff4c19b8826c45c0a2",
         intel: "8b80ea7efc201cf6e27bbe80f5da7a0e71a1fff2d97863ec550a9ac8b7e3f239"

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
