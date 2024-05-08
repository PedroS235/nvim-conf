local M = {
	"folke/tokyonight.nvim",
	priority = 1000,
	lazy = false,
}

function M.config()
	require("tokyonight").setup({
		-- your configuration comes here
		-- or leave it empty to use the default settings
		style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
		transparent = true, -- Enable this to disable setting the background color
		styles = {
			-- Style to be applied to different syntax groups
			-- Value is any valid attr-list value for `:help nvim_set_hl`
			comments = { italic = true },
			keywords = { italic = true },
			functions = { bold = true },
			variables = {},
			-- Background styles. Can be "dark", "transparent" or "normal"
			sidebars = "dark", -- style for sidebars, see below
			floats = "dark", -- style for floating windows
		},
	})
	vim.cmd.colorscheme("tokyonight")
end

return M
