local M = {
	"akinsho/nvim-bufferline.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
}

function M.config()
	require("bufferline").setup({})
end

return M
