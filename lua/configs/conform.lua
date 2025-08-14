return {
  formatters_by_ft = {
    lua = { "stylua" },

    -- typescript / javascript
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },

    -- python
    python = { "black" },

    -- ruby
    ruby = { "rubocop" },

    -- shell
    sh = { "shfmt" },
    bash = { "shfmt" },

    -- docker (formatting often handled by editors; no default formatter here)

    -- go
    go = { "gofmt" },
  },
}


