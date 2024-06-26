-- Taken from: https://github.com/LunarVim/Launch.nvim/blob/master/lua/user/lspsettings/jsonls.lua
return {
	settings = {
		json = {
			schemas = require("schemastore").json.schemas(),
		},
	},
	setup = {
		commands = {
			Format = {
				function()
					vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
				end,
			},
		},
	},
}
