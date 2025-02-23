local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofumpt", "golines" },
    sql = { "sleek" },
    json = { "prettier" },
    yaml = { "prettier" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
