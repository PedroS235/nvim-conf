local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Set the leader key to a <space>
vim.g.mapleader = " "

-- keymap(mode, key_combination, command, options)

-- -------------------
-- - General Keymaps -
-- -------------------

-- Navigation between active buffers
keymap("n", "H", ":bprevious<CR>", opts) -- LEFT
keymap("n", "L", ":bnext<CR>", opts) -- RIGHT

-- Navigation between windows
keymap("n", "<C-h>", "<C-w>h", opts) -- LEFT
keymap("n", "<C-l>", "<C-w>l", opts) -- RIGHT
keymap("n", "<C-k>", "<C-w>k", opts) -- UP
keymap("n", "<C-j>", "<C-w>j", opts) -- DOWN

-- Resize windows
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts) -- LEFT
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts) -- RIGHT
keymap("n", "<C-Up>", ":resize -2<CR>", opts) -- UP
keymap("n", "<C-Down>", ":resize +2<CR>", opts) -- DOWN

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

-- ------------------
-- - Plugin Keympas -
-- ------------------

-- Nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>f", require("telescope.builtin").find_files, opts) -- Find Files
keymap("n", "<leader>lg", require("telescope.builtin").live_grep, opts) -- Live grep
keymap("n", "<leader>bl", require("telescope.builtin").buffers, opts) -- View current buffers
keymap("n", "<leader>dg", require("telescope.builtin").diagnostics, opts) -- View the lsp diagnostics of the current buffers

-- Iluminate
keymap("n", "<C-n>", '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', opts)
keymap("n", "<C-p>", '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', opts)

-- LazyGit
keymap("n", "<leader>lz", ":LazyGit<CR>", opts)

-- Copilot
-- keymap("i", "<C-f>", "copilot#Accept('<CR>')", { silent = true, expr = true })
