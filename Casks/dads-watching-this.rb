cask "dads-watching-this" do
  version "0.1.5"
  sha256 "89bf704d8527db78c26891f6149509bbe3acb855152fbb989b0d974035366020"

  url "https://github.com/badeagle85/dads-watching-this/releases/download/v#{version}/DadsWatchingThis-#{version}.zip"
  name "아빠안잔다"
  name "Dad's Watching This!"
  desc "Keeps your Mac awake while AI coding sessions run, with the state visible at a glance"
  homepage "https://github.com/badeagle85/dads-watching-this"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  auto_updates true

  app "DadsWatchingThis.app"

  caveats <<~EOS
    이 앱은 Apple 공증을 받지 않았습니다. 열기 전에 격리 표시를 떼세요:

      xattr -dr com.apple.quarantine /Applications/DadsWatchingThis.app

    먼저 열면 macOS 가 앱을 지우라고 권합니다. 그때는 다시 설치하세요:

      brew reinstall --cask dads-watching-this

    0.1.3 부터는 앱이 스스로 갱신합니다. 이 명령은 처음 한 번만 필요합니다.
  EOS

  zap trash: [
    "~/Library/Preferences/com.sanghun.DadsWatchingThis.plist",
  ]
end
