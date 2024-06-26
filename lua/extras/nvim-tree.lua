local M = {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
}

function M.config()
	local opts = { noremap = true, silent = true }
	local keymap = vim.keymap.set

	keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

	require("nvim-tree").setup({
		actions = {
			open_file = {
				quit_on_open = true,
				window_picker = {
					enable = false,
				},
			},
		},
	})
end

return M
