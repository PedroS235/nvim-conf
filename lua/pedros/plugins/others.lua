return {
	-- Highlights the all word occurrences of the word under cursor
	"RRethy/vim-illuminate",

	-- LSP Configuration
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",

	-- Auto closing pairs/tags
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",

	-- Paranthesis rainbow colors
	"HiPhish/nvim-ts-rainbow2",

	-- Tmux navigator
	"christoomey/vim-tmux-navigator",

	-- Markdown Preview
	{
		"iamcco/markdown-preview.nvim",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	-- Marp
	"aca/marp.nvim",

	-- nvim notify
	-- "rcarriga/nvim-notify",
}
