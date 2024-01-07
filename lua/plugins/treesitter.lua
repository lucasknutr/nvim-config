
  return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()      
      local config = require("nvim-treesitter.configs")
      config.setup({
      ensure_installed = {"lua", "javascript", "typescript", "tsx", "html", "css", "json", "yaml", "bash", "python", "go", "rust", "toml", "dockerfile", "lua", "vim", "regex", "query", "comment", "c", "cpp", "cmake", "java", "latex", "php", "ruby", "scss", "svelte", "tsx", "vue", "yaml"},
      highlight = { enable = true },
      indent = { enable = true },
      })
    end
  }
