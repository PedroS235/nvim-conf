local status, lualine = pcall(require, "lualine")
if not status then
    print("error when loading lualine pluging")
    return
end

lualine.setup()
