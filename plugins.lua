return  {
    {
        "cameron-wags/rainbow_csv.nvim",
        config = function ()
            require 'rainbow_csv'.setup()
        end,
        module = {
            'rainbow_csv',
            'rainbow_csv.fns'
        },
        ft = {
            'csv',
            'tsv',
        }
    },
    {
        'Timuntersberger/neogit',
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("custom.configs.neogit").setup()
        end
    },
    {
        "neovim/nvim-lspconfig",
        opt = true,
        event = "BufReadPre",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,

    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "pyright",
                "gdtoolkit"
            }
        }
    },
}
