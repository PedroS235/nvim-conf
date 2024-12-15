return {
	"ahmedkhalf/project.nvim",
	enabled = true,
	name = "project_nvim",
	event = "VeryLazy",

	keys = {
		{
			"<leader>fp",
			function()
				require("telescope").extensions.projects.projects()
			end,
			desc = "Find Projects",
		},
	},

	opts = {
		active = true,
		on_config_done = nil,
		manual_mode = false,
		detection_methods = { "pattern" },
		patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "pom.xml" },
		ignore_lsp = {},
		exclude_dirs = {},
		show_hidden = false,
		silent_chdir = true,
		scope_chdir = "global",
	},
}
