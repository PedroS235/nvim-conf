-- Do not start a new line with a comment, if on a comment line
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
    callback = function()
        vim.cmd("set formatoptions-=cro")
    end,
})

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Wrap text when editing git commits and markdown files
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "gitcommit", "markdown" },
    callback = function()
        vim.opt_local.wrap = false
        vim.keymap.set("n", "<leader>ch", function()
            require("obsidian").util.toggle_checkbox()
        end, { desc = "Toggle a checkbox" })
    end,
})
