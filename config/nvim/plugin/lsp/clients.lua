local Clients = {
  cspell = {
    null_ls = {
      code_actions = true,
      diagnostics = true,
    },
  },
  eslint = { format_on_save = true },
  gitsigns = {
    null_ls = {
      code_actions = true,
    },
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
    null_ls = {
      diagnostics = true,
    }
  },
  solargraph = {},
  terraformls = { format_on_save = true },
  vtsls = {},
  yamlls = {},

}

return Clients
