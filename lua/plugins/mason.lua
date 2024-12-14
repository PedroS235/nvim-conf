return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "jayp0521/mason-null-ls.nvim",
        "nvim-lua/plenary.nvim",
        "nvimtools/none-ls.nvim",
    },

    config = function()
        local servers = {
            "lua_ls",
            "cssls",
            "html",
            "ts_ls",
            "pyright",
            "bashls",
            "jsonls",
            "yamlls",
            "marksman",
            "tailwindcss",
            "clangd",
            "rust_analyzer",
            "harper_ls",
        }

        local formatters = {
            "stylua",
            "black",
            "prettier",
            "beautysh",
            "clang_format",
        }

        require("mason").setup({
            ui = {
                border = "rounded",
            },
        })

        require("mason-lspconfig").setup({
            ensure_installed = servers,
        })

        require("mason-null-ls").setup({
            ensure_installed = formatters,
            automatic_installation = false,
        })
    end,
}
