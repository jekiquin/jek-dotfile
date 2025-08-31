# Fish Shell Configuration

This directory contains Fish shell configuration files and additional modules for enhanced development workflow.

## Structure

```
fish/
├── config.fish              # Main configuration file
└── additional/              # Additional configuration modules
    ├── keymaps.fish         # Git-related abbreviations and shortcuts
    ├── shortcuts.fish       # Neovim aliases and shortcuts
    ├── welcome.fish         # Custom welcome message and greeting
    └── personal.fish        # Personal environment and tool configurations
```

## Tools & Integrations

### Core Development Tools

- **Neovim** - Text editor with multiple configuration profiles
  - `nlz` - Launch Neovim with Lazy configuration
  - PATH: `/opt/nvim-linux-x86_64/bin`

- **FZF** - Fuzzy finder for files and command history
  - Integrated with Fish shell completion

- **Zoxide** - Smart directory navigation (cd replacement)
  - Initialized for Fish shell integration

- **Bat & FD** - Enhanced file viewing and finding utilities
  - Available via `~/.local/bin` in PATH

### Version Management

- **NVM** - Node.js version management
  - Default version set to LTS

### Git Workflow

- **Forgit** - Interactive Git TUI
  - Copy command: `xclip -selection clipboard`

## Features

## Installation

These configurations are automatically linked when running `./init.sh fish` from the [root directory](https://github.com/jekiquin/jek-dotfile/tree/main) of the dotfiles repository.
