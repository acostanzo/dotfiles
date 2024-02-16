local clients = dofile(CWD() .. "clients.lua")

local lsp_client_names = {}
local null_ls_client_names = {}
for client, config in pairs(clients) do
  if not config.null_ls then
    table.insert(lsp_client_names, client)
  else
    table.insert(null_ls_client_names, client)
  end
end

require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = lsp_client_names })
require("mason-null-ls").setup({ ensure_installed = null_ls_client_names })
