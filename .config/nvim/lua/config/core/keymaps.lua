local keymaps = {}

function keymaps.setup()
  -- Quick window navigation (without Ctrl+W prefix)
  vim.keymap.set("n", "<C-h>", "<C-w>h", {
    silent = true,
    desc = "Move focus to left window",
  })
  vim.keymap.set("n", "<C-j>", "<C-w>j", {
    silent = true,
    desc = "Move focus to lower window",
  })
  vim.keymap.set("n", "<C-k>", "<C-w>k", {
    silent = true,
    desc = "Move focus to upper window",
  })
  vim.keymap.set("n", "<C-l>", "<C-w>l", {
    silent = true,
    desc = "Move focus to right window",
  })

  -- Arrow key alternatives for window navigation
  vim.keymap.set("n", "<C-Left>", "<C-w>h", {
    silent = true,
    desc = "Move focus to left window",
  })
  vim.keymap.set("n", "<C-Down>", "<C-w>j", {
    silent = true,
    desc = "Move focus to lower window",
  })
  vim.keymap.set("n", "<C-Up>", "<C-w>k", {
    silent = true,
    desc = "Move focus to upper window",
  })
  vim.keymap.set("n", "<C-Right>", "<C-w>l", {
    silent = true,
    desc = "Move focus to right window",
  })

  -- Neo-Tree
  vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {
    silent = true,
    desc = "Toggle Neo-Tree",
  })

  -- Telescope
  local builtin = require("telescope.builtin")
  vim.keymap.set("n", "<leader>ff", builtin.find_files, {
    silent = true,
    desc = "Find Files (Telescope)",
  })
  -- vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
  --    silent = true,
  --    desc = "Search Files (Telescope)"
  -- })
  -- vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {
  --     silent = true,
  --     desc = "Open Recent Files (Telescope)"
  -- })

  -- Format
  vim.keymap.set("n", "<leader><leader>", vim.lsp.buf.format, {
    silent = true,
    desc = "Format File",
  })
end

return keymaps
