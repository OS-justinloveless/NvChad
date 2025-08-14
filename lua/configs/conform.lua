return {
  formatters_by_ft = {
    lua = { "stylua" },

    -- typescript / javascript
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },

    -- python
    python = { "black" },

    -- ruby
    ruby = { "rubocop" },

    -- shell
    sh = { "shfmt" },
    bash = { "shfmt" },

    -- docker
    dockerfile = { "hadolint" },

    -- go
    go = { "gofmt" },
  },
}


