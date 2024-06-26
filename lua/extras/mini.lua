local M = {
	"echasnovski/mini.nvim",
	-- Examples:
	--  - va)  - [V]isually select [A]round [)]paren
	--  - yinq - [Y]ank [I]nside [N]ext [']quote
	--  - ci'  - [C]hange [I]nside [']quote
}

function M.config()
	require("mini.ai").setup({ n_lines = 500 })
end

return M
