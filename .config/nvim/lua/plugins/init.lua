return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre',
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "go",
        "yaml",
        "json",
        "sql"
      },
    },
  },

  {
    "github/copilot.vim",
    lazy = false,
    config = function()                   -- Mapping tab is already used in NvChad
      vim.g.copilot_no_tab_map = true;    -- Disable tab mapping
      vim.g.copilot_assume_mapped = true; -- Assume that the mapping is already done
    end
  }
}
