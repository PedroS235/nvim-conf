local M = {
	"RRethy/vim-illuminate",
}

function M.config()
	local opts = { noremap = true, silent = true }
	local keymap = vim.keymap.set

	keymap("n", "<C-n>", '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', opts)
	keymap("n", "<C-p>", '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', opts)
end

return M
