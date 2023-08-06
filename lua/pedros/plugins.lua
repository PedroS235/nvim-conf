local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- This autogroup automatically runs PackerCompile whenever this file is updated
vim.cmd([[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

return require("packer").startup(function(use)
	-- Start of Plugins Declaration

	-- Ensure Packer is installed/updated
	use("wbthomason/packer.nvim")

	-- Common plugins
	use("nvim-lua/plenary.nvim")
	use("nvim-tree/nvim-web-devicons")
	use("lewis6991/impatient.nvim") -- speeds up the loadding of plugins

	-- Color Schemes
	use("navarasu/onedark.nvim")
	use("sam4llis/nvim-tundra")
	use("catppuccin/nvim")
	use("maxmx03/fluoromachine.nvim")

	-- Status line
	use("nvim-lualine/lualine.nvim")

	-- File Explorer
	use("nvim-tree/nvim-tree.lua")

	-- Highlights the all word occurrences of the word under cursor
	use("RRethy/vim-illuminate")

	-- Telescope (Fuzzy finder)
	use("nvim-telescope/telescope.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/playground")

	-- LSP Configuration
	use({
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"jose-elias-alvarez/null-ls.nvim",
		"jayp0521/mason-null-ls.nvim",
		"hrsh7th/cmp-nvim-lsp",
	})

	-- Autocompletion
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("hrsh7th/cmp-nvim-lua")
	use("saadparwaiz1/cmp_luasnip") -- snippet completions

	-- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- Bufferline - Improves the tabs
	use("akinsho/bufferline.nvim")

	--  Draws indents lines
	use("lukas-reineke/indent-blankline.nvim")

	-- Toggles a CLI inside nvim
	use("akinsho/toggleterm.nvim")

	--  Allows to surrond words with "" for instance
	use("kylechui/nvim-surround")

	-- Comment lines using gc
	use("terrortylor/nvim-comment")

	-- Auto closing pairs/tags
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- Paranthesis rainbow colors
	use("p00f/nvim-ts-rainbow")

	-- LazyGit
	use("kdheepak/lazygit.nvim")

	-- Tmux navigator
	use("christoomey/vim-tmux-navigator")

	-- Git signs
	use("lewis6991/gitsigns.nvim")

	-- Markdown Preview
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	-- Copilot
	use("zbirenbaum/copilot.lua")

	-- Cphelper
	use("p00f/cphelper.nvim")

	-- LSP signature
	use({
		"ray-x/lsp_signature.nvim",
	})

	-- End of Plugins Declaration
	if packer_bootstrap then
		require("packer").sync()
	end
end)
