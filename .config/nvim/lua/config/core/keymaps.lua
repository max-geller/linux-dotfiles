local keymaps = {}

function keymaps.setup()
    -- Neo-Tree
    vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {
        silent = true,
        desc = "Toggle Neo-Tree"
    })

    -- Telescope
    local builtin = require("telescope.builtin") 
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {
        silent = true,
        desc = "Find Files (Telescope)"
    })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
        silent = true,
        desc = "Search Files (Telescope)"
    })
    vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {
        silent = true,
        desc = "Open Recent Files (Telescope)"
    })

    -- Format
    vim.keymap.set("n", "<leader>fg", vim.lsp.buf.format, {
        silent = true,
        desc = "Format File"
    })
    

end

return keymaps
