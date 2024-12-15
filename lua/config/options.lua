local opt = vim.opt

-- Show line numbers
opt.number = true

-- Show relative line numbers
opt.relativenumber = true

-- Tab Space Options
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Smart identation
opt.autoindent = true

-- Use terminal colors
opt.termguicolors = true

-- Show the sign column.
opt.signcolumn = "yes"
opt.cursorline = true

-- Vertical splits will always split to the right
opt.splitright = true

-- Horizontal splits will always split to the bottom
opt.splitbelow = true

-- Always have a least 8 lines visible above or below
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Disable text wrap
opt.wrap = false

-- Disable the use of swap files
opt.swapfile = false

-- Search options
opt.smartcase = true -- Searches depending the case
opt.ignorecase = true

-- Remove the bottom line where it shows the current vim mode
opt.showmode = false

-- Give more vertical space to the nvim command line
opt.cmdheight = 2

-- Don't create  backup files
opt.backup = false

-- Add the keyword `-` so that if a word uses it, it will be considered as a word. ex: Hello-world
opt.iskeyword:append("-")

-- Draw a vertical line 80 spaces from the left
opt.colorcolumn = "80"

-- Enable persistent undos accross files
opt.undofile = true

-- Set neovim to use system's clipboard
-- opt.clipboard:append("unnamedplus")

-- For obsidian.nvim to work properly
opt.conceallevel = 2

-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 300

-- Set to false if terminal does not support nerdfonts
vim.g.have_nerd_font = true

-- Set to true if virtual text is desired by default
vim.g.virtual_text = false
