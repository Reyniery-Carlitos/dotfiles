local lspconfig = require("lspconfig")

local servers = {
  -- lua_ls = {
  --   settings = {
  --     Lua = {
  --       runtime = { version = "LuaJIT" },
  --       diagnostics = { globals = { "vim" } },
  --       workspace = { library = vim.api.nvim_get_runtime_file("", true), checkThirdParty = false },
  --       telemetry = { enable = false },
  --     },
  --   },
  -- },
  -- pyright = {},
  ts_ls = {},
  -- clangd = {},
  -- rust_analyzer = {},
  -- html = {},
  -- cssls = {},
  -- jsonls = {},
}

-- Opcional: función para keymaps comunes
local on_attach = function(_, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
end

-- Setup general
for server, config in pairs(servers) do
  config.on_attach = on_attach
  lspconfig[server].setup(config)
end
