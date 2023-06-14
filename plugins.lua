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
    {"mfussenegger/nvim-dap-python",},
    {"theHamsta/nvim-dap-virtual-text"},
    {"rcarriga/nvim-dap-ui"},
    {"nvim-telescope/telescope-dap.nvim"},
    {
        "mfussenegger/nvim-dap",
        opt = true,
        event = "BufReadPre",
        module = { "dap" },
        wants = { "nvim-dap-virtual-text", "DAPInstall.nvim", "nvim-dap-ui", "nvim-dap-python", "which-key.nvim" },
        requires = {
            "Pocco81/DAPInstall.nvim",
            "theHamsta/nvim-dap-virtual-text",
            "rcarriga/nvim-dap-ui",
            "mfussenegger/nvim-dap-python",
            "nvim-telescope/telescope-dap.nvim",
            { "jbyuki/one-small-step-for-vimkind", module = "osv" },
        },
        config = function()
            require("custom.configs.dap").setup()
        end,
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
        "rcarriga/nvim-dap-ui",
        dependencies = {"mfussenegger/nvim-dap"}
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
