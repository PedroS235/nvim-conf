return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		spec = {
			{ "<leader>c", group = "[C]ode", mode = { "n", "x" } },
			{ "<leader>d", group = "[D]ocument" },
			{ "<leader>r", group = "Rename" },
			{ "<leader>s", group = "Find" },
			{ "<leader>t", group = "Toggle" },
		},
	},
}
