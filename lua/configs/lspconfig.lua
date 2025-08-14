require("nvchad.configs.lspconfig").defaults()

local servers = {
  -- web
  "tsserver",
  "eslint",

  -- c#
  "omnisharp",

  -- python
  "pyright",

  -- ruby
  "solargraph",

  -- bash
  "bashls",

  -- docker
  "dockerls",

  -- go
  "gopls",
}

if vim.lsp.enable then
  vim.lsp.enable(servers)
else
  local lspconfig = require "lspconfig"
  for _, name in ipairs(servers) do
    local cfg = {
      capabilities = require("nvchad.configs.lspconfig").capabilities,
      on_init = require("nvchad.configs.lspconfig").on_init,
      on_attach = require("nvchad.configs.lspconfig").on_attach,
    }
    lspconfig[name].setup(cfg)
  end
end


