cask "bcu" do
  version "0.6.0"
  sha256 "c255eff61c8a229d8de14dccf85a9ab1efc6ff04ff647ff103d8b6ae2db65eeb"

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
