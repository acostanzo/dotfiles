local null_ls = require("null-ls")

local clients = dofile(CWD() .. "clients.lua")
local code_actions = null_ls.builtins.code_actions
local completion = null_ls.builtins.completion
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local hover = null_ls.builtins.hover

local sources = {}
for client, config in pairs(clients) do
  if config.null_ls then
    if config.null_ls.code_actions then
      table.insert(sources, code_actions[client])
    end

    if config.null_ls.completion then
      table.insert(sources, completion[client])
    end

    if config.null_ls.diagnostics then
      table.insert(sources, diagnostics[client])
    end

    if config.null_ls.formatting then
      table.insert(sources, formatting[client])
    end

    if config.null_ls.hover then
      table.insert(sources, hover[client])
    end
  end
end

null_ls.setup({
  sources = sources,
})
