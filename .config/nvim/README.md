# Neovim Configuration

This is my Neovim configuration. It's a work in progress as I'm still learning how to use Neovim.

## Key Features

- 🚀 Lazy-loaded plugins using lazy.nvim
- 📁 File explorer with Neo-tree
- 🎨 Catppuccin Theming
- ⚡ Fast startup time

## Prerequisites

- Neovim (version 0.10.0 or higher)
- Git
- Nerd Font (e.g., JetBrains Mono)

## Plugin Manager

This configuration uses [Lazy.nvim](https://github.com/folke/lazy.nvim) as its plugin manager.

## Plugins

### Plugin Manager

- [Lazy.nvim](https://github.com/folke/lazy.nvim) - Modern Plugin Manager

### Core Plugins

- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) - File Explorer
- [Lualine](https://github.com/nvim-lualine/lualine.nvim) - Status Line
- [Prettier](https://github.com/jose-elias-alvarez/null-ls.nvim) - Code Formatter
- [Alpha](https://github.com/goolord/alpha-nvim) - Dashboard
- [which-key](https://github.com/folke/which-key.nvim) - Keybindings
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder
  
### Themes

- [Catppuccin](https://github.com/catppuccin/nvim) - Catppuccin Theme

## Folder Structure

```(markdown)
nvim/
├── lua/
│   ├── config/
│   │   ├── core/          # Essential Neovim Settings
│   │   │   ├── autocmds.lua
│   │   │   ├── init.lua
│   │   │   ├── keymaps.lua
│   │   │   └── options.lua
│   │   ├── lsp/           # LSP Configurations
│   │   │   ├── init.lua
│   │   │   └── servers/
│   │   │       ├── lua.lua
│   │   │       └── rust.lua
│   │   ├── plugins/       # Plugin-Specific Configurations
│   │   │   ├── init.lua        
│   │   │   └── neo-tree.lua
│   │   ├── snippets/      # For Custom Snippets
│   │   ├── themes/
│   │   │   ├── catppuccin.lua
│   │   │   └── tokyonight.lua
│   │   ├── types/      # For TypeScript Type Definitions
│   │   ├── utils/         # Helper Functions
│   │   │   └── init.lua
│   │   └── lazy.lua
├── init.lua
├── lazy-lock.json
└── README.md 

```

## Key Mappings

| Mapping | Description |
|---------|-------------|
| `<Space>` | Leader key |
| `<Space>e` | Toggle file explorer |
| `<Space>o` | Focus file explorer |
| `<Space>ff` | Find File (Telescope) |
| `<Space>fg` | Grep (Telescope) |
