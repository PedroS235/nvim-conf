local M = {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
}

function M.config()
	vim.keymap.set("n", "<leader>h", function()
		require("harpoon.ui").toggle_quick_menu()
	end, { desc = "Harpoon Toggle" })

	vim.keymap.set("n", "<leader>m", function()
		vim.notify("⚓ Marked File")
		require("harpoon.mark").add_file()
	end, { desc = "Harpoon Mark" })

	vim.keymap.set("n", "L", function()
		require("harpoon.ui").nav_next()
	end, { desc = "Harpo>hmon Mark" })

	vim.keymap.set("n", "H", function()
		require("harpoon.ui").nav_prev()
	end, { desc = "Harpo>hmon Mark" })
end

return M
