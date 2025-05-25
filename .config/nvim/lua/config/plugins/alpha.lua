return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
  
      -- Set header
      dashboard.section.header.val = {
        "                                                     ",      
        "  ███╗   ███╗ █████╗ ██╗  ██╗██╗   ██╗██╗███╗   ███╗ ",
        "  ████╗ ████║██╔══██╗╚██╗██╔╝██║   ██║██║████╗ ████║ ",
        "  ██╔████╔██║███████║ ╚███╔╝ ██║   ██║██║██╔████╔██║ ",
        "  ██║╚██╔╝██║██╔══██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        "  ██║ ╚═╝ ██║██║  ██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        "  ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      }
  
  
  
        -- Configure section spacing and highlights
        dashboard.section.header.opts.hl = "AlphaHeader"
        dashboard.section.buttons.opts.hl = "AlphaButtons"
        dashboard.section.footer.opts.hl = "AlphaFooter"

        -- Custom highlight for the header
        vim.api.nvim_set_hl(0, "AlphaHeader", {
            fg = "#fab387"
        }) -- Catppuccin peach color                               
  
  
      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
        dashboard.button("SPC e", "  > Toggle File Explorer"),
        dashboard.button("SPC ff", "  > Find File (Telescope)"),
        dashboard.button("SPC fg", "  > Grep (Telescope)"),
        dashboard.button("q", "  > Quit NeoVIM", "<cmd>qa<CR>"),
        dashboard.button(":Tutor", "  > Start Tutor"),
      }

    -- Set footer with dynamic content including MAXVIM version
    local function get_footer()
        -- Get plugin stats
        local stats = require("lazy").stats()
        local total_plugins = stats.count

        -- Get current date/time
        local datetime = os.date(" %m-%d-%Y   %H:%M:%S")

        -- Get Neovim version
        local version = vim.version()
        local nvim_version_info = "v" .. version.major .. "." .. version.minor .. "." .. version.patch

        -- Get MAXVIM version 
        local maxvim_version = "0.0.1" -- Hardcoded for now

        return string.format("⚡ %d plugins loaded   Maxvim %s   Neovim %s   %s", total_plugins, maxvim_version,
            nvim_version_info, datetime)
    end

    dashboard.section.footer.val = get_footer()


  
      -- Send config to alpha
      alpha.setup(dashboard.opts)
  
      -- Disable folding on alpha buffer
      vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
  }