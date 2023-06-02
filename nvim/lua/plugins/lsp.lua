return{ -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
     dependencies = {
-- Automatically install LSPs to stdpath for neovim
    {   'williamboman/mason.nvim', config = true },
        'folke/neodev.nvim',
        'williamboman/mason-lspconfig.nvim',
        require("mason").setup({
    ui = {
        icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
        }

            },
     }),
        -- Useful status updates for LSP
        -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
    { 'j-hui/fidget.nvim', opts = {} },
        },
    config = function()
        require("config.masonconfig")
    end
}
