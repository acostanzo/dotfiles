local clients = dofile(CWD() .. "clients.lua")
local on_attach = dofile(CWD() .. "on_attach.lua")
local null_ls = dofile(CWD() .. "null_ls.lua")

require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = clients })
local lspconfig = require('lspconfig')

-- Setup capabilities for autocomplete
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Configure each client
for client, config in pairs(clients) do
  if not config.null_ls then
    lspconfig[client].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = config.lspconfig_settings,
    })
  end
end
