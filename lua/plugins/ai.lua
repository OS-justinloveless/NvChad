return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
    opts = {
      adapters = {
        gemini = function()
          local adapters = require "codecompanion.adapters"
          return adapters.extend("gemini", {
            schema = {
              model = { default = "gemini-1.5-flash" },
            },
            env = { api_key = "GOOGLE_API_KEY" },
          })
        end,
      },
      strategies = {
        chat = { adapter = "gemini" },
        inline = { adapter = "gemini" },
        agent = { adapter = "gemini" },
      },
    },
  },
}


