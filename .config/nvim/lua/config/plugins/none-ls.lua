return {
  "nvimtools/none-ls.nvim",
  config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
          sources = {
              null_ls.builtins.formatting.prettier.with({
                  filetypes = {
                      "javascript",
                      "typescript",
                      "css",
                      "scss",
                      "html",
                      "json",
                      "yaml",
                      "markdown",
                      "graphql",
                      "md",
                      "txt",
                  },
              }),
              null_ls.builtins.formatting.stylua,
              null_ls.builtins.diagnostics.erb_lint,
              null_ls.builtins.diagnostics.rubocop,
              null_ls.builtins.formatting.rubocop,
          },
      })
      
      -- Format on save (optional)
      vim.cmd([[
          augroup FormatAutogroup
              autocmd!
              autocmd BufWritePre * lua vim.lsp.buf.format()
          augroup END
      ]])
  end,
}