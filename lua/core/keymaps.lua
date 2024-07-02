local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Set the leader key to a <space>
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts) -- UP
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts) -- DOWN

-- Remove the highlight from the search
keymap("n", "<ESC>", ":noh<CR>", opts)

-- Copy/Yank to clipboard
keymap("v", "<leader>y", '"+y', opts)
keymap("n", "<leader>y", '"+y', opts)

-- Page Up/Down with cursor in the middle
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)

-- Next/Previous Selection with curser in the middle
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

-- Do not replace current yank with substituted text
keymap("x", "p", [["_dP]], opts)

-- Close/delete current buffer
keymap("n", "<leader>q", "<cmd>:bd<CR>", { desc = "Close current Buffer" })

keymap("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Open Oil file navigator" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
