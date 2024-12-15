return { -- optional cmp completion source for require statements and module annotations
	{
		"hrsh7th/nvim-cmp",
		enabled = true,
		event = "InsertEnter",

		config = function()
			local lspkind = require("lspkind")
			local cmp = require("cmp")
			cmp.setup({
				formatting = {
					fields = { "kind", "abbr", "menu" },
					expandable_indicator = true,
					format = lspkind.cmp_format({}),
				},
				sources = {
					{ name = "lazydev", group_index = 0 }, -- set group index to 0 to skip loading LuaLS completions
					{ name = "nvim_lsp" },
					{ name = "buffer" },
					{ name = "path" },
					{ name = "emoji" },
				},
				mapping = cmp.mapping.preset.insert({
					["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
					["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
					["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
					["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
					["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<C-e>"] = cmp.mapping({
						i = cmp.mapping.abort(),
						c = cmp.mapping.close(),
					}),
				}),

				window = {
					completion = {
						border = "rounded",
						winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,FloatBorder:FloatBorder,Search:None",
						col_offset = -3,
						side_padding = 1,
						scrollbar = false,
						scrolloff = 8,
					},
					documentation = {
						border = "rounded",
						winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,Search:None",
					},
				},
				experimental = {
					ghost_text = false,
				},
			})
		end,
	},

	{
		"hrsh7th/cmp-nvim-lsp",
		event = "InsertEnter",
	},
	{
		"hrsh7th/cmp-emoji",
		event = "InsertEnter",
	},
	{
		"hrsh7th/cmp-buffer",
		event = "InsertEnter",
	},
	{
		"hrsh7th/cmp-path",
		event = "InsertEnter",
	},
	{
		"hrsh7th/cmp-cmdline",
		event = "InsertEnter",
	},
	{
		"onsails/lspkind-nvim",
		event = "InsertEnter",
	},
}
