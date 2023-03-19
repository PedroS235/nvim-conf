local status, onedark = pcall(require, "onedark")
if not status then
	return
end

onedark.setup({
	-- Main options --
	-- Available: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
	style = "darker",
	transparent = false, -- Show/hide background

	-- toggle theme style ---
	toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
	toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer" }, -- List of styles to toggle between

	-- Change code style ---
	code_style = {
		comments = "italic",
		keywords = "none",
		functions = "bold",
		strings = "none",
		variables = "none",
	},

	-- Lualine options --
	lualine = {
		transparent = true, -- lualine center bar transparency
	},

	-- Plugins Config --
	diagnostics = {
		darker = true, -- darker colors for diagnostic
		undercurl = true, -- use undercurl instead of underline for diagnostics
		background = true, -- use background color for virtual text
	},

	highlights = { rainbowcol1 = { fg = "#eeeeee" } },
})
onedark.load()
