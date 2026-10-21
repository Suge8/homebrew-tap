cask "bcu" do
  version "0.7.1"
  sha256 "54fc7c0218608bd4fe594b2fabfbf032ce7982a1f4b2f18c5a4dea1fce3896c1"

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
