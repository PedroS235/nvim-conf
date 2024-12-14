return {
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins

        config = function()
            require("tokyonight").setup({
                style = "moon",  -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = false, -- Enable this to disable setting the background color
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = true },
                    keywords = { italic = true },
                    functions = { bold = true },
                    variables = {},
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark",
                    floats = "dark",
                }
            })
            vim.cmd.colorscheme("tokyonight")
        end,
    },
}
