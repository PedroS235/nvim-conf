return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",

    opts = {
        ensure_installed = {
            "vim",
            "vimdoc",
            "markdown",
            "lua",
        },
        sync_install = false,
        auto_install = true,

        highlight = { enable = true },
        indent = { enable = true },
        -- autotag = { enable = true },
        -- autopairs = { enable = true },
    }
}
