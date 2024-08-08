local M = {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
	},
}

function M.config()
	local obsidian = require("obsidian")
	obsidian.setup({
		ui = { enable = false },
		workspaces = {
			{
				name = "Second Brain",
				path = "~/MEGA/Second_Brain_Vault/",
			},
		},

		daily_notes = {
			folder = "DailyNotes",
			template = "DailyNoteTemplate.md",
		},

		templates = {
			folder = "Templates",
		},
		mappings = {
			-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.

			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
			-- Toggle check-boxes.
			["<leader>ch"] = {
				action = function()
					return require("obsidian").util.toggle_checkbox()
				end,
				opts = { buffer = true },
			},
		},
	})
end

return M
