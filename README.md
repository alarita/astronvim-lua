# astronvim-lua

Personal [AstroNvim](https://github.com/AstroNvim/AstroNvim) Lua configuration — plugins, LSP, keymaps, and UI tweaks.

This repo contains only the `lua/` directory. It is designed to be **symlinked** into an existing AstroNvim setup rather than replacing the whole config.

## Files

| File / Dir | Purpose |
|---|---|
| `lazy_setup.lua` | Lazy.nvim bootstrap and plugin spec entry point |
| `community.lua` | AstroCommunity plugin imports |
| `polish.lua` | Final config applied after everything loads |
| `plugins/` | Individual plugin specs (LSP, completion, UI, etc.) |

---

## Installation (WSL / Linux distro)

### Prerequisites

- Neovim ≥ 0.9
- [AstroNvim](https://github.com/AstroNvim/AstroNvim) already installed at `~/.config/nvim`
- `git`

### Steps

**1. Back up your existing `lua/` directory**

```bash
mv ~/.config/nvim/lua ~/.config/nvim/lua.bak
```

**2. Clone this repo**

```bash
git clone https://github.com/alarita/astronvim-lua ~/astronvim-lua
```

**3. Symlink `lua/` into your Neovim config**

```bash
ln -s ~/astronvim-lua ~/.config/nvim/lua
```

**4. Launch Neovim**

```bash
nvim
```

Lazy.nvim will bootstrap itself and install all plugins on first launch.

---

### WSL-specific notes

- If you access files from the Windows side (`/mnt/c/...`), keep the clone on the Linux filesystem (e.g. `~/`) for better performance — symlinks across the WSL/Windows boundary can cause inode issues with some plugins.
- If `~/.config/nvim` does not exist yet, create it first:

```bash
mkdir -p ~/.config/nvim
```

- Windows Terminal or VS Code's integrated terminal both work fine for the initial plugin install.

---

### Updating

Pull the latest changes and Neovim picks them up on next launch (no re-linking needed):

```bash
cd ~/astronvim-lua && git pull
```

To sync plugin versions after an update, run inside Neovim:

```
:Lazy sync
```

---

## Removing / reverting

```bash
rm ~/.config/nvim/lua          # remove the symlink
mv ~/.config/nvim/lua.bak ~/.config/nvim/lua   # restore backup (if you made one)
```
