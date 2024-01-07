local M = {
	"RRethy/vim-illuminate",
	event = "VeryLazy",
}

function M.config()
	local keymap = vim.keymap.set
	local illuminate = require("illuminate")

	keymap("n", "<C-n>", function()
		illuminate.goto_next_reference(true)
	end, { desc = "Go to next reference in the highlighted group" })
	keymap("n", "<C-p>", function()
		illuminate.goto_prev_reference(true)
	end, { desc = "Go to previous reference in the highlighted group" })
end

return M
