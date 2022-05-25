local nvim_tree = require("nvim-tree")

KB("n", "<Leader>D", ":NvimTreeToggle<CR>")
KB("n", "<Leader>F", ":NvimTreeFindFile<CR>")

nvim_tree.setup({
	hijack_cursor = true,
})
