return {
	{
		"nvim-treesitter/nvim-treesitter",
		enabled = true,
		event = { "BufReadPost", "BufNewFile" },
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",

		opts = {
			ensure_installed = {
				"vim",
				"vimdoc",
				"markdown",
				"lua",
				"python",
				"c",
				"cpp",
			},
			sync_install = false,
			auto_install = true,

			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
			autopairs = { enable = true },
		},
	},
	{
		"windwp/nvim-ts-autotag",
		enabled = false,
		event = "VeryLazy",
		opts = {},
	},
	{
		"windwp/nvim-autopairs",
		enabled = true,
		event = "InsertEnter",
		opts = {},
	},
}
