return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	opts = {
		renderer = {
			icons = {
				glyphs = {
					default = "",
					symlink = "",
					bookmark = "",
					folder = {
						arrow_closed = "",
						arrow_open = "",
						default = "",
						open = "",
						empty = "",
						empty_open = "",
						symlink = "",
						symlink_open = "",
					},
				},
			},
		},
		actions = {
			open_file = {
				quit_on_open = true,
				window_picker = {
					enable = false,
				},
			},
		},
	},
}
