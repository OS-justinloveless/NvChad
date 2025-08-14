return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSPs
        "typescript-language-server",
        "eslint-lsp",
        "omnisharp",
        "pyright",
        "solargraph",
        "bash-language-server",
        "dockerfile-language-server",
        "gopls",

        -- Linters/Formatters
        "prettier",
        "eslint_d",
        "csharpier",
        "flake8",
        "black",
        "rubocop",
        "shellcheck",
        "shfmt",
        "hadolint",
        "golangci-lint",

        -- DAP
        "node-debug2-adapter",
        "netcoredbg",
      },
    },
  },

  {
    "mfussenegger/nvim-dap",
  },
}


