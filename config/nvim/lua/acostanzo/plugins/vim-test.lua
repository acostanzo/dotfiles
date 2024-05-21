return {
	"vim-test/vim-test",
	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<leader>tf", "<cmd>TestFile<CR>", { desc = "Run test file" })
		keymap.set("n", "<leader>utf", "<cmd>TestFile -u<CR>", { desc = "Run test file & update snapshots" })
		keymap.set("n", "<leader>tc", "<cmd>TestNearest<CR>", { desc = "Run nearest test to cursor" })
		keymap.set("n", "<leader>tl", "<cmd>TestLast<CR>", { desc = "Run last test" })
		keymap.set("n", "<leader>tv", "<cmd>TestVisit<CR>", { desc = "" })

		vim.cmd([[
      let g:test#basic#start_normal = 1 " If using basic strategy
      let g:test#neovim#start_normal = 1 " If using neovim strategy
      let test#javascript#executable = "yarn test"
    ]])
	end,
}
