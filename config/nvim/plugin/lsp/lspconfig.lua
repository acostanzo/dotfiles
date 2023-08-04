local lspconfig = require('lspconfig')

local capabilities = dofile(CWD() .. "capabilities.lua")
local clients = dofile(CWD() .. "clients.lua")
local on_attach = dofile(CWD() .. "on_attach.lua")

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
