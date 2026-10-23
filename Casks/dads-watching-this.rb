cask "dads-watching-this" do
  version "0.1.0"
  sha256 "9d5b84109558b9abb524d680c14bb45bf42180f0a1813df7bbb8d04989383a07"

  url "https://github.com/badeagle85/dads-watching-this/releases/download/v#{version}/DadsWatchingThis-#{version}.zip",
      verified: "github.com/badeagle85/dads-watching-this/"
  name "아빠안잔다"
  name "Dad's Watching This!"
  desc "Keeps your Mac awake while AI coding sessions run, with the state visible at a glance"
  homepage "https://github.com/badeagle85/dads-watching-this"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "DadsWatchingThis.app"

  zap trash: [
    "~/Library/Preferences/com.sanghun.DadsWatchingThis.plist",
  ]
end
