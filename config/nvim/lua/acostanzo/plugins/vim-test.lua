return {
	"vim-test/vim-test",
	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<leader>t", "<cmd>TestFile<CR>", { desc = "Run test file" })
		keymap.set("n", "<leader>ut", "<cmd>TestFile -u<CR>", { desc = "Run test file & update snapshots" })
		keymap.set("n", "<leader>s", "<cmd>TestNearest<CR>", { desc = "Run nearest test to cursor" })
		keymap.set("n", "<leader>l", "<cmd>TestLast<CR>", { desc = "Run last test" })
		keymap.set("n", "<leader>vt", "<cmd>TestVisit<CR>", { desc = "Visit test" })

		vim.cmd([[
      let g:test#basic#start_normal = 1 " If using basic strategy
      let g:test#neovim#start_normal = 1 " If using neovim strategy
      let test#javascript#executable = "yarn test"
    ]])
	end,
}
