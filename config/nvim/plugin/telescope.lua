vim.api.nvim_set_keymap(
  'n',
  '<C-p>',
  '<cmd>lua require("telescope.builtin").find_files()<cr>',
  {noremap = true}
)
