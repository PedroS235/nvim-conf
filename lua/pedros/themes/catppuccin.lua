local M = {
	"catppuccin/nvim",
	priority = 1000,
	lazy = false,
}

function M.config()
	require("catppuccin").setup({
		flavour = "mocha",
		transparent_background = false,
		term_colors = false,
		styles = {
			comments = { "italic" },
			functions = { "bold" },
		},
	})
	vim.cmd.colorscheme("catppuccin")
end

return M
