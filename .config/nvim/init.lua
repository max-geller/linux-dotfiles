vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Initialize Lazy Package Manager
require("config.lazy")

-- Load Core Options
require("config.core").setup()

-- Initialize LSP
-- require("config.lsp").setup()


