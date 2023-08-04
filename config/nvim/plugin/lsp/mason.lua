local clients = dofile(CWD() .. "clients.lua")

require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = clients })
