# homebrew-tap

[badeagle85](https://github.com/badeagle85) 의 macOS 앱 설치용 Homebrew tap.

## 쓰는 법

```bash
brew tap badeagle85/tap
```

| 앱 | 설치 |
|---|---|
| [아빠안잔다](https://github.com/badeagle85/dads-watching-this) — AI 세션이 도는 동안 맥을 안 재운다 | `brew install --cask dads-watching-this` |

## 설치 뒤에 할 일

여기 앱들은 Apple 공증(연 $99)을 받지 않았다. **열기 전에** 격리 표시를 떼야 한다.

```bash
brew trust badeagle85/tap
brew install --cask <이름>
xattr -dr com.apple.quarantine /Applications/<앱>.app
```

먼저 열면 macOS 가 앱을 지우라고 권하고, 확인을 누르면 앱이 사라진다. 그때는 `brew reinstall --cask <이름>` 으로 다시 받으면 된다.

소스는 각 저장소에 전부 공개되어 있다.
