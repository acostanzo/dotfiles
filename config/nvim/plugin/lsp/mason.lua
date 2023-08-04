local clients = dofile(CWD() .. "clients.lua")

local client_names = {}
for client, _ in pairs(clients) do
  table.insert(client_names, client)
end

require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = client_names })
