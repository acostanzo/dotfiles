local Clients = {
  eslint = { format_on_save = true },
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
  solargraph = {},
  terraformls = { format_on_save = true },
  vtsls = {},
  yamlls = {},

}

return Clients
