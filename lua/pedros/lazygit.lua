local M = {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	event = "VeryLazy",
}

function M.config()
	local opts = { noremap = true, silent = true }
	local keymap = vim.keymap.set
	keymap("n", "<leader>lz", ":LazyGit<CR>", opts)
end

return M
