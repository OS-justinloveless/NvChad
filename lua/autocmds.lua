-- format on save for supported filetypes via conform.nvim
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    local ok, conform = pcall(require, "conform")
    if not ok then
      return
    end
    conform.format({ lsp_fallback = true, quiet = true })
  end,
})


