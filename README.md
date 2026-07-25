# Homebrew Canonry

Homebrew tap for [Canonry](https://github.com/Canonry/canonry), the open-source,
self-hosted AEO operating platform.

## Install Canonry

Add the tap once, then install Canonry by its short formula name:

```bash
brew tap canonry/canonry
brew install canonry
```

The equivalent one-command install is:

```bash
brew install canonry/canonry/canonry
```

For the standard CLI and dashboard setup:

```bash
cnry init
cnry serve
```

The CLI installs as both `cnry` and `canonry`.

## Install the Codex or Claude Code plugin

The native plugins reuse the Homebrew-installed Canonry runtime and
`canonry-mcp` adapter. For a first-time plugin setup, initialize Canonry without
also writing standalone skills or MCP configuration:

```bash
cnry init --skip-skills --skip-mcp
cnry start
```

### Codex

```bash
codex plugin marketplace add Canonry/canonry
codex plugin add canonry@canonry
```

### Claude Code

```bash
claude plugin marketplace add Canonry/canonry
claude plugin install canonry@canonry
```

Use one integration path per client so the native plugin and a standalone
`canonry-mcp` entry do not expose duplicate tools. See the
[plugin guide](https://github.com/Canonry/canonry/blob/main/docs/plugins.md) for
verification, updates, and security boundaries.

## Update

```bash
brew update
brew upgrade canonry
```

## Uninstall

```bash
brew uninstall canonry
brew untap canonry/canonry
```

## Notes

This formula installs Canonry on top of Homebrew's `node`. If you manage Node
yourself with nvm, fnm, or asdf, that copy of Node will not be used by the
formula.

The formula tracks the latest published version of `@canonry/canonry` on npm
and is bumped automatically by the `Bump formula` workflow after each release.
