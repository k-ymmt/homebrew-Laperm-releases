# homebrew-Laperm-releases

Homebrew tap and release binaries for [Laperm](https://github.com/k-ymmt/Laperm), a local Markdown
editor for macOS (and iOS) that keeps a folder of plain `.md` files as its only data.

## Install

```sh
brew install --cask k-ymmt/laperm-releases/laperm
```

This installs `/Applications/Laperm.app` (macOS 27 or later). Builds are signed with a Developer ID
and notarized by Apple.

## Update

```sh
brew update && brew upgrade --cask laperm
```

Test builds keep the same marketing version and differ by build number: the cask `version` is
`<version>,<build>` (for example `0.1.0,130`) and every build is its own GitHub Release
(`v<version>-<build>`, asset `Laperm-<version>-<build>.zip`).

## Uninstall

```sh
brew uninstall --cask laperm        # removes the app
brew uninstall --zap --cask laperm  # also removes its sandbox container and saved state
```

Your notes are never touched: they live in the folder (Vault) you chose, not in the app.
