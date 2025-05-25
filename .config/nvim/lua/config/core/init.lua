-- Load core configurations in specific order
local M = {}

function M.setup()
    -- Load options first as it sets important defaults
    require("config.core.options")

    -- Load keymaps before plugins to ensure base keymaps are set
    require("config.core.keymaps").setup()

    -- Load autocommands
    require("config.core.autocmds")

    -- Load diagnostic settings
    require("config.core.diagnostics")

    -- Load custom commands last
    require("config.core.commands")
end

return M