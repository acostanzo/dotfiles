function KB(mode, keyStroke, action, opts)
	vim.api.nvim_set_keymap(mode, keyStroke, action, opts or { noremap = true })
end

function TableContains(tbl, x)
	local found = false
	for _, v in pairs(tbl) do
		if v == x then
			found = true
		end
	end
	return found
end
