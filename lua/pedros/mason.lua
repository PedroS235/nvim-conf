local M = {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"jayp0521/mason-null-ls.nvim",
		"nvim-lua/plenary.nvim",
	},
}

M.servers = {
	"lua_ls",
	"cssls",
	"html",
	"tsserver",
	"pyright",
	"bashls",
	"jsonls",
	"yamlls",
	"marksman",
	"tailwindcss",
	"clangd",
	"rust_analyzer",
}

M.formatters = {
	"stylua",
	"black",
	"prettier",
	"beautysh",
	"clang_format",
}

function M.config()
	require("mason").setup({
		ui = {
			border = "rounded",
		},
	})

	require("mason-lspconfig").setup({
		ensure_installed = M.servers,
	})

	require("mason-null-ls").setup({
		ensure_installed = M.formatters,
		automatic_installation = false,
	})
end

return M
