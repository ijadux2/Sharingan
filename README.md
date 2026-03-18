# Sharingan.nvim

**Sharingan.nvim** - A Doom Emacs-style Neovim plugin manager with a beautiful TUI.

Repository: [https://github.com/ijadux2/Sharingan.nvim](https://github.com/ijadux2/Sharingan.nvim)

## Features

- Beautiful TUI with spinners, progress bars, and ASCII art
- Doom Emacs-style commands
- Plugin management (update, sync, clean, list)
- Config management (reset, remove-config)
- System diagnostics (doctor)
- Plugin search and info

## Installation

```bash
git clone https://github.com/ijadux2/Sharingan.nvim.git ~/codespace/sharingan.nvim
cd ~/codespace/sharingan.nvim
./install.sh
```

Or manually:

```bash
ln -s ~/codespace/sharingan.nvim/sharingan ~/.local/bin/sharingan
export PATH="$HOME/.local/bin:$PATH"  # Add to .bashrc/.zshrc
```

## Usage

```bash
# Update all plugins
sharingan update

# Update specific plugin
sharingan update telescope

# Update config tangle
sharingan update tangle

# Reset config from git
sharingan reset

# Remove entire config
sharingan remove-config

# List installed plugins
sharingan list

# Sync plugin database
sharingan sync

# Download config from GitHub
sharingan fetch                    # Fetch default config
sharingan fetch user/repo         # Fetch from GitHub
sharingan fetch https://...       # Fetch from URL

# Clean unused plugins
sharingan clean

# Search for plugins
sharingan search nvim

# Show plugin info
sharingan info telescope

# System diagnostics
sharingan doctor
```

## Flags

- `-f, --force` - Skip confirmation prompts
- `-v, --verbose` - Enable verbose output

## Requirements

- Neovim (for plugin management)
- Git
- curl (for plugin search)
- jq (optional, for prettier search output)
