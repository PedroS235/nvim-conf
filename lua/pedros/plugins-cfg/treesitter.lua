local status, configs = pcall(require, "nvim-treesitter.configs")
if not status then
	print("error when loading treesitter plugin")
	return
end

return configs.setup({
	ensure_installed = "all",
	sync_install = false,
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml", "html" } },
	rainbow = {
		enable = true,
		-- list of languages you want to disable the plugin for
		-- disable = { 'jsx', 'cpp' },
		-- Which query to use for finding delimiters
		-- query = 'rainbow-parens',
		-- Highlight the entire buffer all at once
		-- strategy = require('ts-rainbow').strategy.global,
	},
	playground = {
		enable = false,
		disable = {},
		updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
		persist_queries = false, -- Whether the query persists across vim sessions
		keybindings = {
			toggle_query_editor = "o",
			toggle_hl_groups = "i",
			toggle_injected_languages = "t",
			toggle_anonymous_nodes = "a",
			toggle_language_display = "I",
			focus_language = "f",
			unfocus_language = "F",
			update = "R",
			goto_node = "<cr>",
			show_help = "?",
		},
	},
	autopairs = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
	context_commentstring = {
		enable = true,
	},
})
