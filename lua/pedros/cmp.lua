-- Slightly modified from:
-- https://github.com/LunarVim/Launch.nvim/blob/master/lua/user/cmp.lua
local M = {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
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
			"saadparwaiz1/cmp_luasnip",
			event = "InsertEnter",
		},
		{
			"L3MON4D3/LuaSnip",
			event = "InsertEnter",
			dependencies = {
				"rafamadriz/friendly-snippets",
			},
		},
		{
			"hrsh7th/cmp-nvim-lua",
		},
	},
}

function M.config()
	vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#6CC644" })
	vim.api.nvim_set_hl(0, "CmpItemKindTabnine", { fg = "#CA42F0" })
	vim.api.nvim_set_hl(0, "CmpItemKindCrate", { fg = "#F64D00" })
	vim.api.nvim_set_hl(0, "CmpItemKindEmoji", { fg = "#FDE030" })

	local cmp = require("cmp")
	local luasnip = require("luasnip")
	require("luasnip/loaders/from_vscode").lazy_load()
	require("luasnip").filetype_extend("typescriptreact", { "html" })

	local icons = require("pedros.icons")

	cmp.setup({
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},
		mapping = cmp.mapping.preset.insert({
			["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
			["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
			["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
			["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
			["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
			["<C-y>"] = cmp.mapping.confirm({ select = true }),
			["<C-e>"] = cmp.mapping({
				i = cmp.mapping.abort(),
				c = cmp.mapping.close(),
			}),
			-- <c-l> will move you to the right of each of the expansion locations.
			-- <c-h> is similar, except moving you backwards.
			["<C-l>"] = cmp.mapping(function()
				if luasnip.expand_or_locally_jumpable() then
					luasnip.expand_or_jump()
				end
			end, { "i", "s" }),
			["<C-h>"] = cmp.mapping(function()
				if luasnip.locally_jumpable(-1) then
					luasnip.jump(-1)
				end
			end, { "i", "s" }),
		}),
		formatting = {
			fields = { "kind", "abbr", "menu" },
			format = function(entry, vim_item)
				vim_item.kind = icons.kind[vim_item.kind]
				vim_item.menu = ({
					nvim_lsp = "",
					nvim_lua = "",
					luasnip = "",
					buffer = "",
					path = "",
					emoji = "",
				})[entry.source.name]
				if entry.source.name == "copilot" then
					vim_item.kind = icons.git.Octoface
					vim_item.kind_hl_group = "CmpItemKindCopilot"
				end

				if entry.source.name == "cmp_tabnine" then
					vim_item.kind = icons.misc.Robot
					vim_item.kind_hl_group = "CmpItemKindTabnine"
				end

				if entry.source.name == "emoji" then
					vim_item.kind = icons.misc.Smiley
					vim_item.kind_hl_group = "CmpItemKindEmoji"
				end

				return vim_item
			end,
		},
		sources = {
			-- { name = "copilot" },
			{
				name = "nvim_lsp",
				entry_filter = function(entry, ctx)
					local kind = require("cmp.types.lsp").CompletionItemKind[entry:get_kind()]
					if kind == "Snippet" and ctx.prev_context.filetype == "java" then
						return false
					end

					if ctx.prev_context.filetype == "markdown" then
						return true
					end

					if kind == "Text" then
						return false
					end

					return true
				end,
			},
			{ name = "luasnip" },
			{ name = "cmp_tabnine" },
			{ name = "nvim_lua" },
			{ name = "buffer" },
			{ name = "path" },
			{ name = "emoji" },
		},
		confirm_opts = {
			behavior = cmp.ConfirmBehavior.Replace,
			select = false,
		},
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
end

return M
