local Clients = {
  cspell = {
    code_actions = true,
    diagnostics = true,
    non_lsp = true,
  },
  eslint = { format_on_save = true },
  gitsigns = {
    code_actions = true,
    non_lsp = true,
  },
  lua_ls = {
    format_on_save = true,
    lspconfig_settings = {
      Lua = {
        diagnostics = {
          globals = {
            "BKB",
            "CWD",
            "KB",
            "TableClone",
            "TableContains",
            "TableSpread",
            "vim",
          },
        },
      },
    }
  },
  marksman = {},
  rubocop = {
    diagnostics = true,
    non_lsp = true
  },
  solargraph = {},
  terraformls = { format_on_save = true },
  vtsls = {},
  yamlls = {},

}

return Clients
