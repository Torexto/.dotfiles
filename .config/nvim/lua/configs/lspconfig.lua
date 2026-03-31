local nvlsp = require "nvchad.configs.lspconfig"
nvlsp.defaults()

local home = vim.fn.expand "~"

vim.env.DOTNET_ROOT = home .. "/.dotnet"
vim.env.PATH = vim.env.PATH .. ":" .. home .. "/.dotnet"

local servers = {
  html = {},
  cssls = {},
  pyright = {},
  rust_analyzer = {},
  omnisharp = {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  },
  lua_ls = {},
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end

-- read :h vim.lsp.config for changing options of lsp servers
