local M = {
	"navarasu/onedark.nvim",
	priority = 1000,
	lazy = false,
}

function M.config()
	local theme = require("onedark")
	theme.setup({
		style = "dark", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
		transparent = true, -- Show/hide background

		code_style = {
			comments = "italic",
			functions = "bold",
		},

		-- Lualine options --
		lualine = {
			transparent = true, -- lualine center bar transparency
		},
	})

	theme.load()
end

return M
