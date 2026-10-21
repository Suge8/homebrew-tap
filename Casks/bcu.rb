cask "bcu" do
  version "0.7.3"
  sha256 "d22792811e9148008e9c164086eaeeb6ba2a56a8e73c0f536462e251919878bb"

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
