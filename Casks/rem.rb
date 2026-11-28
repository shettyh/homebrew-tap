cask "rem" do
  arch arm: "aarch64", intel: "x64"

  version "0.32.3"
  sha256 arm:   "ec9d3eccf4c7ea8aa718c36313de289a58c778a0ce266b6e5eb241842fc2a049",
         intel: "7b3a2c40f269c3952a1f0166c2ff7ba6a1800604f474b85e00b34cd3fdfc24f4"

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
