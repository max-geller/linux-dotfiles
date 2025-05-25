return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim"},
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            enable_git_status = true,
            enable_diagnostics = true,
            filesystem = {
                --             follow_current_file = enabled,
                filtered_items = {
                    visible = false,
                    hide_dotfiles = false,
                    hide_gitignored = false
                }
            }
        })
    end
}