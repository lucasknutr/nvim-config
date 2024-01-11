return {
    {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
        config = function()
          require("mason-lspconfig").setup({
            ensure_installed = {
              "lua_ls",
              "tsserver",
              "bashls",
              "jsonls",
              "quick_lint_js",
              "rust_analyzer"
              },
          })
        end
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
        local lspconfig = require('lspconfig')
        lspconfig.lua_ls.setup({})
        lspconfig.tsserver.setup({})
        lspconfig.bashls.setup({})
        lspconfig.jsonls.setup({})
        lspconfig.quick_lint_js.setup({})
        lspconfig.rust_analyzer.setup({})
        -- shortcuts
        vim.keymap.set('n', 'N', vim.lsp.buf.hover, {})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
      end
    }
}
