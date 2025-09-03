# Jek's Dotfiles

A collection of development tools and configuration files for setting up new development environments quickly and consistently.

## What's Included

This dotfiles repository provides automated installation and configuration for:

- **Fish Shell** - Modern shell with auto-suggestions and syntax highlighting
  - Fisher package manager
  - Tide prompt theme
  - NVM for Node.js version management
  - Forgit TUI for git operations
- **Development Tools**
  - Neovim with lazy.nvim configuration
  - Zoxide (smart directory navigation)
  - FZF (fuzzy finder)
  - Bat (enhanced cat with syntax highlighting)
- **Configuration Files**
  - Fish shell configurations
  - Neovim configurations (nvim-lazy)
- **Optional Tools**
  - Go programming language (go1.25.0)
  - Claude CLI for AI assistance

## Usage

### Ubuntu Systems

Run the installation script:

```bash
# Install everything
./init.sh

# Install only specific components
./init.sh fish    # Install fish shell and plugins
./init.sh utils   # Install development utilities only
./init.sh go      # Install Go programming language
./init.sh claude  # Install Claude CLI
```

### What the Script Does

1. **Utils Installation**: Installs zoxide, fzf, bat, and neovim
2. **Fish Installation**: Sets up fish shell with plugins and configurations
3. **Configuration Linking**: Symlinks configuration files to appropriate locations

## TODO

### High Priority
- [ ] **Install tmux** - Terminal multiplexer configuration and setup
- [ ] **macOS Support** - Create init script for macOS (init-mac.sh)

### Medium Priority  
- [ ] **Terminal Emulator** - Wezterm installation and configuration (separate script)
- [ ] **Git Configuration** - Add global git config setup
- [ ] **SSH Configuration** - Add SSH key management and config
- [ ] **Rust** - Add Rust installation

### Low Priority
- [ ] **Dotfile Management** - Add dotfile update/sync mechanism
- [ ] **Backup System** - Create backup of existing configs before overwriting
- [ ] **Selective Installation** - Allow granular selection of tools to install
