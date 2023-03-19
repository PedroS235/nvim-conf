local status, telescope = pcall(require, "telescope")
if not status then 
    print("error when loading telescope plugin")
    return
end

telescope.setup{
  defaults = {
    mappings = {
      i = {}
    },


  },
  pickers = {
      find_files = {theme = "dropdown", previewer = false}
  },
  extensions = {}
}
