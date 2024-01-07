local M = {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}

function M.config()
	local null_ls = require("null-ls")
	local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

	local formatting = null_ls.builtins.formatting
	-- local diagnostics = null_ls.builtins.diagnostics

	null_ls.setup({
		sources = {
			formatting.stylua,
			formatting.prettier,
			formatting.prettier.with({
				extra_filetypes = { "toml" },
			}),
			formatting.black.with({ extra_args = { "-l", "79" } }),
			formatting.beautysh,
			formatting.clang_format,
			formatting.rustfmt,
		},
		-- Autoformatting on save
		on_attach = function(client, bufnr)
			if client.supports_method("textDocument/formatting") then
				vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = augroup,
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format({ bufnr = bufnr })
					end,
				})
			end
		end,
	})
end

return M
