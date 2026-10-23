cask "dads-watching-this" do
  version "0.1.1"
  sha256 "f3788f356f77cdcce2543222c0a637104f79f0b8e5a58383373fddb9f203ebf9"

  url "https://github.com/badeagle85/dads-watching-this/releases/download/v#{version}/DadsWatchingThis-#{version}.zip"
  name "아빠안잔다"
  name "Dad's Watching This!"
  desc "Keeps your Mac awake while AI coding sessions run, with the state visible at a glance"
  homepage "https://github.com/badeagle85/dads-watching-this"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "DadsWatchingThis.app"

  caveats <<~EOS
    이 앱은 Apple 공증을 받지 않았습니다. 열기 전에 격리 표시를 떼세요:

      xattr -dr com.apple.quarantine /Applications/DadsWatchingThis.app

    먼저 열면 macOS 가 앱을 지우라고 권합니다. 그때는 다시 설치하세요:

      brew reinstall --cask dads-watching-this
  EOS

  zap trash: [
    "~/Library/Preferences/com.sanghun.DadsWatchingThis.plist",
  ]
end
