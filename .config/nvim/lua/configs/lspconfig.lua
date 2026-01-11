require("nvchad.configs.lspconfig").defaults()

local pid = vim.fn.getpid()

local servers = {
  "html" = {}, 
  "cssls" = {} ,
  "pyright" = {},
  "rust-analyzer" = {},
  "omnisharp" = {
    cmd = {"omnisharp", "--languageserver", "--hostPID", toString(pid)},
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end

-- read :h vim.lsp.config for changing options of lsp servers 
