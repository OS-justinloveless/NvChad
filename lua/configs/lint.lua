local lint = require "lint"

lint.linters_by_ft = {
  -- typescript / javascript
  javascript = { "eslint_d" },
  javascriptreact = { "eslint_d" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },

  -- python
  python = { "flake8" },

  -- ruby
  ruby = { "rubocop" },

  -- shell
  sh = { "shellcheck" },
  bash = { "shellcheck" },

  -- docker
  dockerfile = { "hadolint" },

  -- go
  go = { "golangci-lint" },
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  callback = function()
    lint.try_lint()
  end,
})


