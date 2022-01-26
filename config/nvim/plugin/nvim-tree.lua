local nvim_tree = require("nvim-tree")

vim.api.nvim_set_keymap("n", "<Leader>D", ":NvimTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>F", ":NvimTreeFindFile<CR>", { noremap = true })

nvim_tree.setup({
	hijack_cursor = true,
})
