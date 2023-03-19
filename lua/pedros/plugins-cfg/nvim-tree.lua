local status, nvim_tree = pcall(require, "nvim-tree")
if not status then 
    print("error when loading lualine pluging")
    return
end

-- Use g? to get a list of available keymaps
nvim_tree.setup({
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
})
