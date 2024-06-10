local M = {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
}

function M.config()
	local ret, noice = pcall(require, "noice")

	local lualine_x = {}

	if ret then
		table.insert(lualine_x, {
			noice.api.statusline.mode.get,
			cond = noice.api.statusline.mode.has,
			color = { fg = "#ff9e64" },
		})
	end

	require("lualine").setup({
		sections = {
			lualine_x = lualine_x,
		},
	})
end

return M
