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

lspconfig.gdscript.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"gd", "gdscript", "gdscript3"},
    --root_dir = util.root_pattern("project.godot", ".git"),
    flags = {debounce_text_changes = 150,}
}
