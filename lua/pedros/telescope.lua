local M = {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
}

function M.config()
	local opts = { noremap = true, silent = true }
	local keymap = vim.keymap.set

	keymap("n", "<leader>f", require("telescope.builtin").find_files, opts) -- Find Files
	keymap("n", "<leader>lg", require("telescope.builtin").live_grep, opts) -- Live grep
	keymap("n", "<leader>bl", require("telescope.builtin").buffers, opts) -- View current buffers
	keymap("n", "<leader>dg", require("telescope.builtin").diagnostics, opts) -- View the lsp diagnostics of the current buffers
	keymap("n", "<leader>ch", require("telescope.builtin").command_history, opts) -- View the commands

	require("telescope").setup({
		pickers = {
			find_files = { theme = "dropdown", previewer = true },
		},
	})
end

return M
