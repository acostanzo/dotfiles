local clients = dofile(CWD() .. "clients.lua")
local keybindings = dofile(CWD() .. "keybindings.lua")

local on_attach = function(client, bufnr)
  keybindings(bufnr)
  -- Enable completion triggered by <c-x><c-o>
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Auto format specific clients on save
  if clients[client.name].format_on_save then
    vim.cmd([[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]])
  end
end

return on_attach
