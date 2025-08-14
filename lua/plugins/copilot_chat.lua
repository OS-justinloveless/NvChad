return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    cmd = { "CopilotChat", "CopilotChatToggle", "CopilotChatOpen", "CopilotChatClose" },
    dependencies = {
      "zbirenbaum/copilot.lua",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      { "nvim-telescope/telescope.nvim", optional = true },
      { "nvim-tree/nvim-web-devicons", optional = true },
    },
    opts = {
      chat_autocomplete = true,
      show_help = false,
      window = {
        layout = "float",
        width = 0.6,
        height = 0.7,
        border = "rounded",
      },
    },
  },
}


