local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("pedros.lsp.mason")
require("pedros.lsp.handlers").setup()
require("pedros.lsp.null-ls")
