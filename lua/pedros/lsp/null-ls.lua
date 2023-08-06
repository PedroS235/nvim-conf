local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
	print("error when loading null-ls plugin")
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

-- For formatting on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	sources = {
		-- python
		formatting.black.with({ extra_args = { "-l", "79" } }),

		-- formatting.autopep8,
		diagnostics.flake8,

		-- lua
		formatting.stylua,

		-- shell
		formatting.beautysh,

		diagnostics.shellcheck,

		-- C/C++
		formatting.clang_format,
		--diagnostics.cpplint,

		-- js/css/html/json/...
		formatting.prettier.with({ extra_args = { "--single-quote", "--jsx-single-quote" } }),

		-- html
		diagnostics.tidy,

		formatting.rustfmt,
		-- formatting.marksman,
		formatting.fourmolu,
		formatting.gofumpt,
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
