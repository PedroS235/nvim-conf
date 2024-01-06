local M = {
	"lewis6991/gitsigns.nvim",
}

function M.config()
	require("gitsigns").setup({
		signcolumn = true,
	})
end

return M
