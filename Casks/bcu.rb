cask "bcu" do
  version "0.8.1"
  sha256 "ec34fc896cb738818ec69e2f204735d032a81adfb5e4d0de4fa2f1d490682b54"

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
