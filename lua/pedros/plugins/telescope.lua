return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		defaults = {
			mappings = {
				i = {},
			},
		},
		pickers = {
			find_files = { theme = "dropdown", previewer = true },
		},
		extensions = {},
	},
}
