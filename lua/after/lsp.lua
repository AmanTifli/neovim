require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "clangd", "lua_ls", "pyright" },
})

local lspconfig = require("lspconfig")

-- Setup clangd
lspconfig.clangd.setup{
    init_options = {
        compilationDatabasePath = "./builddir",
    },
}

-- Setup Lua LSP (lua_ls)
lspconfig.lua_ls.setup{
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            telemetry = {
                enable = false,
            },
        },
    },
}

-- Setup Python LSP (pyright)
lspconfig.pyright.setup{}