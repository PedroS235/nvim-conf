require("pedros.core.options")
require("pedros.core.keymaps")
require("pedros.launch")
require("pedros.autocmds")

-- Colorscheme
spec("pedros.themes.tokyonight")

-- Core
spec("pedros.lsp")
spec("pedros.cmp")
spec("pedros.telescope")
spec("pedros.treesitter")
spec("pedros.mason")
spec("pedros.null-ls")

-- Extras
spec("pedros.nvim-tree")
spec("pedros.comment")
spec("pedros.lualine")
spec("pedros.noice")
spec("pedros.gitsigns")
spec("pedros.bufferline")
spec("pedros.copilot")
spec("pedros.surround")
spec("pedros.lazygit")
spec("pedros.markdown-preview")
spec("pedros.illuminate")
spec("pedros.presence")
spec("pedros.schema-store")
spec("pedros.which-key")
spec("pedros.dropbar")
spec("pedros.indentline")
spec("pedros.diffview")
spec("pedros.harpoon")
spec("pedros.tabby")
spec("pedros.bqf")
spec("pedros.ufo")
spec("pedros.obsidian")
spec("pedros.todo-comments")
spec("pedros.tmux-navigator")
spec("pedros.vim-sleuth")
spec("pedros.project")
spec("pedros.alpha")

require("pedros.lazy")
