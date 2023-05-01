require("lualine").setup({
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'filename' },
    lualine_c = { 'branch', 'diff' },
    lualine_x = { 'lsp_progress', 'diagnostics' },
    lualine_y = { 'encoding', 'fileformat', 'filetype' },
    lualine_z = { 'searchcount', 'location' }
  }
})
