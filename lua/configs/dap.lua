local dap = require "dap"

-- TypeScript/JavaScript via node2 (installed by Mason as node-debug2-adapter)
dap.adapters.node2 = {
  type = "executable",
  command = "node",
  args = { vim.fn.stdpath "data" .. "/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
}

dap.configurations.typescript = {
  {
    type = "node2",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    outFiles = { "${workspaceFolder}/dist/**/*.js" },
  },
}

dap.configurations.typescriptreact = dap.configurations.typescript
dap.configurations.javascript = dap.configurations.typescript
dap.configurations.javascriptreact = dap.configurations.typescript

-- C# via netcoredbg
dap.adapters.coreclr = {
  type = "executable",
  command = vim.fn.exepath "netcoredbg",
  args = { "--interpreter=vscode" },
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "Launch",
    request = "launch",
    program = function()
      return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Debug/", "file")
    end,
  },
}


