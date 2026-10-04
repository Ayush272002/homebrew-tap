# homebrew-tap

Homebrew formulae for my projects.

## Install

```
brew tap Ayush272002/tap
brew trust --formula ayush272002/tap/shmscope
brew install shmscope
```

Homebrew asks you to trust formulae from third party taps before it loads
them, that's the second line.

## Formulae

| Formula | Platform | |
|---|---|---|
| [shmscope](https://github.com/Ayush272002/shmscope) | macOS, Apple Silicon | Live terminal viewer for POSIX shared memory |

## Updates

Each project's release workflow writes its formula here. Don't edit them by
hand, change the source in the project instead, e.g.
[`packaging/homebrew/shmscope.rb`](https://github.com/Ayush272002/shmscope/blob/main/packaging/homebrew/shmscope.rb).
