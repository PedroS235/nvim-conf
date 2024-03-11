local M = {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		{
			"windwp/nvim-ts-autotag",
			event = "VeryLazy",
			opts = {},
		},
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			opts = {},
		},
	},
}

function M.config()
	require("nvim-treesitter.configs").setup({
		ensure_installed = {
			"bash",
			"c",
			"vim",
			"vimdoc",
			"markdown",
			"lua",
			"html",
		},
		sync_install = false,
		auto_install = true,

		highlight = { enable = true },
		indent = { enable = true },
		autotag = { enable = true },
		autopairs = { enable = true },
	})
end

return M
