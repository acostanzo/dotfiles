local clients = dofile(CWD() .. "clients.lua")
local on_attach = dofile(CWD() .. "on_attach.lua")

require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = clients })
local lspconfig = require('lspconfig')
local null_ls = require("null-ls")

local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics

-- Setup capabilities for autocomplete
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Configure each client
local sources = {}
for client, config in pairs(clients) do
  if config.non_lsp then
    if config.code_actions then
      table.insert(sources, code_actions[client])
    end
    if config.diagnostics then
      table.insert(sources, diagnostics[client])
    end
  else
    lspconfig[client].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = config.lspconfig_settings,
    })
  end
end

null_ls.setup({
  sources = sources,
})
