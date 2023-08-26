local lsp_servers = {
    "lua_ls",        -- Lua
    "pyright",       -- Python
    "clangd",        -- C/C++
    "marksman",      -- Markdown
    "rust_analyzer", -- Rust
    "html",
    "cssls",
    -- "hls", -- Haskell
    -- "gopls", -- Go
}

local formatters = {
    "stylua",
    "black",
    "prettier",
    "beautysh",
    "clang_format",
}

-- Setup Mason
require("mason").setup({
    ui = {
        border = "rounded",
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

require("mason-lspconfig").setup({
    ensure_installed = lsp_servers,
    automatic_installation = true,
})

require("mason-null-ls").setup({
    ensured_installed = formatters,
    automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
    return
end

local opts = {}

for _, server in pairs(lsp_servers) do
    opts = {
        on_attach = require("pedros.lsp.handlers").on_attach,
        capabilities = require("pedros.lsp.handlers").capabilities,
    }

    server = vim.split(server, "@")[1]

    local require_ok, conf_opts = pcall(require, "pedros.lsp.settings." .. server)
    if require_ok then
        opts = vim.tbl_deep_extend("force", conf_opts, opts)
    end

    lspconfig[server].setup(opts)
end
