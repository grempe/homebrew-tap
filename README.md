# grempe/homebrew-tap

[Homebrew](https://brew.sh/) [Tap](https://docs.brew.sh/Taps) for installing Homebrew formulae created by [grempe](https://github.com/grempe) on
Apple macOS (x86, Apple Silicon) and Linux systems.

[Taps](https://docs.brew.sh/Taps) add repositories to the list of formulae that `brew` tracks, updates, and installs from.

## Installation

There are currently three builds available. The correct build should be chosen for your system automatically.

- Apple macOS (Intel x86-064)
- Apple macOS (Apple Silicon/M1/arm/aarch64)
- Linux (Intel x86-064)

The initial `brew tap` step is only required the first time you install. Thereafter a simple `brew update` and `brew upgrade` will do the right thing.

### Setup

One-time command.

```sh
brew tap grempe/tap
```

### Install

```sh
brew install sharkey
```

### Upgrade

To perform a periodic upgrade.

```sh
brew update
brew upgrade
```

### Uninstall

```sh
brew uninstall sharkey

# or

brew uninstall --force sharkey
```
