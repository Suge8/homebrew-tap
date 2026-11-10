cask "bcu" do
  version "0.8.0"
  sha256 "4c85c1aa554ce818f31440199339a3c62103bd78b2f1f2997d25f847f78d543b"

  url "https://github.com/Suge8/better-computer-use/releases/download/v#{version}/bcu-#{version}.zip"
  name "bcu"
  desc "Command-line control of desktop apps for AI agents"
  homepage "https://github.com/Suge8/better-computer-use"

  depends_on macos: :sonoma

  app "bcu.app"
  binary "#{appdir}/bcu.app/Contents/MacOS/bcu"

  uninstall signal: ["TERM", "com.sugeh.bcu"]

  zap trash: [
    "~/.config/bcu",
    "~/Library/Caches/bcu",
  ]
end
