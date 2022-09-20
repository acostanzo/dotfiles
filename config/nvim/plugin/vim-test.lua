KB("n", "<leader>t", ":TestFile<CR>", { noremap = true, silent = true })
KB("n", "<leader>ut", ":TestFile -u<CR>", { noremap = true, silent = true })
KB("n", "<leader>s", ":TestNearest<CR>", { noremap = true, silent = true })
KB("n", "<leader>l", ":TestLast<CR>", { noremap = true, silent = true })
KB("n", "<leader>a", ":TestSuite<CR>", { noremap = true, silent = true })
KB("n", "<leader>gt", ":TestVisit<CR>", { noremap = true, silent = true })

vim.cmd([[
  let g:test#basic#start_normal = 1 " If using basic strategy
  let g:test#neovim#start_normal = 1 " If using neovim strategy
  let test#javascript#executable = "yarn test"
]])
