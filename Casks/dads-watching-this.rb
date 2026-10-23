cask "dads-watching-this" do
  version "0.1.0"
  sha256 "9d5b84109558b9abb524d680c14bb45bf42180f0a1813df7bbb8d04989383a07"

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
