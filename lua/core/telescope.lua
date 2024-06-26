local M = {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
}

function M.config()
	local icons = require("extras.icons")
	local actions = require("telescope.actions")

	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
	vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find Grep" })
	vim.keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "Find String" })
	vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
	vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Find Diagnostics" })
	vim.keymap.set("n", "<leader>fh", builtin.command_history, { desc = "Find command History" })
	vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Find Diagnostics" })
	vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "Find Resume" })
	vim.keymap.set("n", "<leader>f.", builtin.oldfiles, { desc = 'Find Recent Files ("." for repeat)' })
	vim.keymap.set("n", "<leader>fc", builtin.colorscheme, { desc = 'Find Recent Files ("." for repeat)' })
	vim.keymap.set("n", "<leader>/", function()
		builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
			winblend = 10,
			previewer = false,
		}))
	end, { desc = "[/] Fuzzily search in current buffer" })

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
