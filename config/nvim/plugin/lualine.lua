function FileNameFormatter(str)
  local filename = str;

  if string.match(str, "NvimTree") then
    filename = "File Explorer"
  end

  return filename;
end

local branch = {
  {
    'branch',
    icon = {
      ' ',
    },
  },
}

local diagnostics = {
  'diagnostics',
}

local diff = {
  'diff',
  symbols = {
    added = ' ',
    modified = ' ',
    removed = ' ',
  },
}

local filename = {
  'filename',
  fmt = FileNameFormatter,
  symbols = {
    modified = '⦿ ',
    readonly = '󰛐 ',
    unnamed = '',
    newfile = '🆕 ',
  },
}

local filetype = {
  'filetype',
  icon_only = true,
}

local shared_winbar = {
  lualine_c = {
    filetype,
    filename,
    diff,
  },
  lualine_x = {
    diagnostics
  }
}

require("lualine").setup({
  options = {
    component_separators = { left = '', right = '' },
    disabled_filetypes = { winbar = { 'packer' } },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = branch,
    lualine_c = {
      TableSpread(filetype, { filetype_names = { NvimTree = 'File Explorer' } }),
      TableSpread(filename, { path = 1 }),
    },
    lualine_x = { 'lsp_progress' },
    lualine_y = { 'searchcount' },
    lualine_z = { 'location' }
  },
  winbar = shared_winbar,
  inactive_winbar = shared_winbar,
})
