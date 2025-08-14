return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts = opts or {}
      opts.ensure_installed = opts.ensure_installed or {}
      local tools = require "configs.mason_tools"
      for _, t in ipairs(tools) do
        table.insert(opts.ensure_installed, t)
      end
      return opts
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = function()
      return { ensure_installed = require "configs.mason_tools", run_on_start = true }
    end,
  },
}


