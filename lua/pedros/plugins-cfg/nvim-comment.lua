local status, comment = pcall(require, "nvim_comment")
if not status then
    print("error when loading nvim_comment plugin")
	return
end

return comment.setup()
