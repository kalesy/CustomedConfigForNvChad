local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local util = require('lspconfig.util')
local root_files = {
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'Pipfile',
    'pyrightconfig.json',
    '.git',
    '.gitignore',
}

local lspconfig = require "lspconfig"

lspconfig.lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = {"vim"},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true)
            },
            telemetry = {
                enable = false,
            },
        },
    },
}

lspconfig.pyright.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {"pyright-langserver", "--stdio"},
    filetypes = {"python"},
    root_dir = util.root_pattern(unpack(root_files)),
    single_file_support = true,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true,
            }
        }
    },
}

local gdscript_config = {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {}
}
if vim.fn.has 'win32' == 1 then
    gdscript_config['cmd'] = {'ncat', '127.0.0.1', '6005'}
end
lspconfig.gdscript.setup(gdscript_config)
