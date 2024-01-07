local M = {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
}

function M.config()
	local icons = require("pedros.icons")
	local actions = require("telescope.actions")

	vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "Find Files" })
	vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Find Grep" })
	vim.keymap.set("n", "<leader>fs", require("telescope.builtin").grep_string, { desc = "Find String" })
	vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Find Buffers" })
	vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics, { desc = "Find Diagnostics" })
	vim.keymap.set("n", "<leader>fh", require("telescope.builtin").command_history, { desc = "Find command History" })

	require("telescope").setup({
		defaults = {
			prompt_prefix = icons.ui.Telescope .. " ",
			selection_caret = icons.ui.Forward .. " ",
		},
		pickers = {
			find_files = { theme = "dropdown", previewer = false },
			live_grep = { theme = "dropdown", previewer = true },
			grep_string = { theme = "dropdown", previewer = true },
			buffers = {
				theme = "dropdown",
				previewer = false,
				initial_mode = "normal",
				mappings = {
					i = {
						["<C-d>"] = actions.delete_buffer,
					},
					n = {
						["dd"] = actions.delete_buffer,
					},
				},
			},
		},
	})
end

return M
