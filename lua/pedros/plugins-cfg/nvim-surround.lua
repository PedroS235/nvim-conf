local status, surround = pcall(require, 'nvim-surround')
if not status then
    print("error when loading nvim-surround plugin")
    return
end

return surround.setup()
