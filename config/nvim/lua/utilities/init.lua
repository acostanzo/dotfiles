function KB(mode, keyStroke, action, opts)
	vim.api.nvim_set_keymap(mode, keyStroke, action, opts or { noremap = true })
end
