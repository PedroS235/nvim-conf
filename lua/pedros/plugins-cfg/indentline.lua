local status, indentline = pcall(require, "indent_blankline")
if not status then
	print("error when loading indent_blankline plugin")
	return
end

vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

indentline.setup({
	show_trailing_blankline_indent = true,
	show_current_context = true,
	show_end_of_line = true,
})
