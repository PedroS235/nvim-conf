local status, autopairs = pcall(require, "nvim-autopairs")
if not status then
	print("error when loading nvim-autopairs plugin")
	return
end

autopairs.setup({})
