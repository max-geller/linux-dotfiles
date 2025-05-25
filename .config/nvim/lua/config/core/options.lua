-- Basic vim options
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.mouse = "a"           -- Enable mouse support
vim.opt.ignorecase = true     -- Case insensitive search
vim.opt.smartcase = true      -- But sensitive when includes uppercase
vim.opt.hlsearch = false      -- Don't highlight search results
vim.opt.wrap = false          -- Don't wrap lines
vim.opt.breakindent = true    -- Maintain indent when wrapping indented lines
vim.opt.tabstop = 4           -- Number of spaces tabs count for
vim.opt.softtabstop = 2       -- Number of spaces tabs count for
vim.opt.shiftwidth = 4        -- Size of an indent
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.termguicolors = true  -- True color support

-- Set Colorscheme
vim.cmd.colorscheme("catppuccin")

