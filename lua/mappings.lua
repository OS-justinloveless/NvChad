-- Load NvChad's default mappings first, then add ours
local ok, _ = pcall(require, "nvchad.mappings")
if not ok then
  -- no-op: fallback if nvchad core isn't available yet
end

local map = vim.keymap.set

map("n", "<leader>dd", function()
  require("dap").continue()
end, { desc = "DAP continue" })

map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "DAP toggle breakpoint" })

map("n", "<leader>do", function()
  require("dap").step_over()
end, { desc = "DAP step over" })

map("n", "<leader>di", function()
  require("dap").step_into()
end, { desc = "DAP step into" })

map("n", "<leader>dO", function()
  require("dap").step_out()
end, { desc = "DAP step out" })


