local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Set the leader key to a <space>
vim.g.mapleader = " "

-- -------------------
-- - General Keymaps -
-- -------------------

-- Navigation between active buffers
keymap("n", "H", ":bprevious<CR>", opts) -- LEFT
keymap("n", "L", ":bnext<CR>", opts) -- RIGHT

-- Resize windows
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts) -- LEFT
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts) -- RIGHT
keymap("n", "<C-Up>", ":resize +2<CR>", opts) -- UP
keymap("n", "<C-Down>", ":resize -2<CR>", opts) -- DOWN

-- Indent line
keymap("v", "<", "<gv", opts) -- LEFT
keymap("v", ">", ">gv", opts) -- RIGHT

-- Move a text selction up/down
keymap("v", "<C-j>", ":m '>+1<CR>gv=gv", opts) -- UP
keymap("v", "<C-k>", ":m '<-2<CR>gv=gv", opts) -- DOWN

-- Remove the highlight from the search
keymap("n", "<leader>nh", ":noh<CR>", opts)

-- Copy/Yank to clipboard
keymap("v", "<leader>y", '"+y', opts)
keymap("n", "<leader>y", '"+y', opts)

-- Open neovim config in a new tmux window
keymap("n", "<leader>c", ":term tmux new-window 'nvim ~/.config/nvim/'<CR>")

-- Page Up/Down with cursor in the middle
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)

-- Next/Previous Selection with curser in the middle
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

-- ------------------
-- - Plugin Keympas -
-- ------------------

-- Nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
-- TODO: Improve keymaps and add more useful ones
keymap("n", "<leader>f", require("telescope.builtin").find_files, opts) -- Find Files
keymap("n", "<leader>lg", require("telescope.builtin").live_grep, opts) -- Live grep
keymap("n", "<leader>bl", require("telescope.builtin").buffers, opts) -- View current buffers
keymap("n", "<leader>dg", require("telescope.builtin").diagnostics, opts) -- View the lsp diagnostics of the current buffers
keymap("n", "<leader>ch", require("telescope.builtin").command_history, opts) -- View the commands

-- Iluminate
keymap("n", "<C-n>", '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', opts)
keymap("n", "<C-p>", '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', opts)

-- LazyGit
keymap("n", "<leader>lz", ":LazyGit<CR>", opts)
