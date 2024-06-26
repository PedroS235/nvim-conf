local M = { "lukas-reineke/indent-blankline.nvim", main = "ibl" }

function M.config()
	require("ibl").setup({ scope = { show_start = false, show_end = false } })
end

return M
