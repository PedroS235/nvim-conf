local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

	-- Common plugins
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons",

	-- Color Schemes
	"navarasu/onedark.nvim",
	"sam4llis/nvim-tundra",
	"catppuccin/nvim",
	"maxmx03/fluoromachine.nvim",
	"Mofiqul/dracula.nvim",

	-- Status line
	"nvim-lualine/lualine.nvim",

	-- File Explorer
	"nvim-tree/nvim-tree.lua",

	-- Highlights the all word occurrences of the word under cursor
	"RRethy/vim-illuminate",

	-- Telescope (Fuzzy finder)
	"nvim-telescope/telescope.nvim",

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	"nvim-treesitter/playground",

	-- LSP Configuration
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",
	"hrsh7th/cmp-nvim-lsp",
	-- LSP signature
	"ray-x/lsp_signature.nvim",

	-- Autocompletion
	"hrsh7th/nvim-cmp", -- The completion plugi,
	"hrsh7th/cmp-buffer", -- buffer completion,
	"hrsh7th/cmp-path", -- path completion,
	"hrsh7th/cmp-cmdline", -- cmdline completion,
	"hrsh7th/cmp-nvim-lua",
	"saadparwaiz1/cmp_luasnip", -- snippet completion,

	-- snippets
	"L3MON4D3/LuaSnip", --snippet engin,
	"rafamadriz/friendly-snippets", -- a bunch of snippets to us,

	-- Bufferline - Improves the tabs
	"akinsho/bufferline.nvim",

	--  Draws indents lines
	"lukas-reineke/indent-blankline.nvim",

	-- Toggles a CLI inside nvim
	"akinsho/toggleterm.nvim",

	--  Allows to surrond words with "" for instance
	"kylechui/nvim-surround",

	-- Comment lines using gc
	"terrortylor/nvim-comment",

	-- Auto closing pairs/tags
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",

	-- Paranthesis rainbow colors
	"p00f/nvim-ts-rainbow",

	-- LazyGit
	"kdheepak/lazygit.nvim",

	-- Tmux navigator
	"christoomey/vim-tmux-navigator",

	-- Git signs
	"lewis6991/gitsigns.nvim",

	-- Markdown Preview
	{
		"iamcco/markdown-preview.nvim",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	-- Copilot
	"zbirenbaum/copilot.lua",

	-- Cphelper
	"p00f/cphelper.nvim",
}

local opts = {}

require("lazy").setup(plugins, opts)
