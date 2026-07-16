# Homebrew tap for TOAD

Homebrew formulae for [TOAD](https://zubeidhendricks.github.io/toad/) — the
token-oriented, declarative agent language that compiles `.agent` files to
fully-typed TypeScript.

## Install

```sh
brew tap zubeidhendricks/toad
brew install toac
```

Then:

```sh
toac init hello
toac build hello.agent   # -> hello.ts, runs on toad-runtime
toac check hello.agent   # diagnostics
toac fmt hello.agent     # canonical formatting
toac lsp                 # Language Server for any LSP-capable editor
```

## What's in the tap

| Formula | Installs | Description |
| ------- | -------- | ----------- |
| `toac`  | `toac`   | The TOAD compiler CLI (`init`, `build`, `check`, `fmt`, `cost`, `lsp`) |

## Updating

The [`bump` workflow](.github/workflows/bump.yml) checks npm daily and updates
the formula automatically when a new `toad-compiler` version is published. To
force a bump: *Actions → bump → Run workflow*.

## Links

- Project: <https://github.com/ZubeidHendricks/toad>
- Docs: <https://zubeidhendricks.github.io/toad/>
- npm: <https://www.npmjs.com/package/toad-compiler>
