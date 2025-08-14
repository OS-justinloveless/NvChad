return {
  defaults = { lazy = true },
  install = { colorscheme = { "material-deep-ocean", "habamax" } },
  checker = { enabled = false },
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "tohtml",
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "zipPlugin",
      },
    },
  },
}


