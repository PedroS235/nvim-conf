local M = {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = false,
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

		notes_subdir = "0_Inbox",

		daily_notes = {
			folder = "4_DailyNotes",
			template = "DailyNoteTemplate.md",
		},

		templates = {
			folder = "99_Templates",
		},

		attachments = {
			img_folder = "98_Assets",
		},

		mappings = {
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
