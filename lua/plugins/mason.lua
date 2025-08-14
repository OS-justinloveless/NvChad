return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts = opts or {}
      opts.ensure_installed = opts.ensure_installed or {}
      local tools = {
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
      }

      for _, t in ipairs(tools) do
        table.insert(opts.ensure_installed, t)
      end

      return opts
    end,
  },
}


