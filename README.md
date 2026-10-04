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

Each project's release workflow opens a PR here with the new formula, and CI
audits, installs and tests it before it's merged. Don't edit formulae by hand,
change the source in the project instead, e.g.
[`packaging/homebrew/shmscope.rb`](https://github.com/Ayush272002/shmscope/blob/main/packaging/homebrew/shmscope.rb).

## Issues

Problems installing through Homebrew go in
[this repo's issues](https://github.com/Ayush272002/homebrew-tap/issues).
Bugs in a tool itself go to that project's repo, e.g.
[shmscope](https://github.com/Ayush272002/shmscope/issues).

Maintained by [Ayush Acharjya](https://github.com/Ayush272002).

## License

Apache 2.0, see [LICENSE](LICENSE).
