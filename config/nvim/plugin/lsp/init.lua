local clients = dofile(CWD() .. "clients.lua")
local on_attach = dofile(CWD() .. "on_attach.lua")

require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = clients })
local lspconfig = require('lspconfig')

-- Setup capabilities for autocomplete
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Configure each client
for client, config in pairs(clients) do
  lspconfig[client].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = config.lspconfig_settings,
  })
end
