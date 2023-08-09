local clients = dofile(CWD() .. "clients.lua")

local client_names = {}
for client, config in pairs(clients) do
  if not config.null_ls then
    table.insert(client_names, client)
  end
end

require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = client_names })
