local function termcodes(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local M = {}
M.disabled = { }
M.nvterm = {
    t = {
        ["<leader>t"] = {
            function()
                require("nvterm.terminal").toggle "float"
            end,
            "toggle vertical term",
        },

        -- new

        ["<leader>h"] = {
            function()
                require("nvterm.terminal").new "horizontal"
            end,
            "new horizontal term",
        },

        ["<leader>v"] = {
            function()
                require("nvterm.terminal").new "vertical"
            end,
            "new vertical term",
        },
    },
    n = {
        ["<leader>t"] = {
            function()
                require("nvterm.terminal").toggle "float"
            end,
            "toggle vertical term",
        },

        -- new

        ["<leader>h"] = {
            function()
                require("nvterm.terminal").new "horizontal"
            end,
            "new horizontal term",
        },

        ["<leader>v"] = {
            function()
                require("nvterm.terminal").new "vertical"
            end,
            "new vertical term",
        },
    },
}
M.nvimtree = {
    n = {
        ["t"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
        -- focus
        ["<C-t>"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
    }
}
M.general = {
    -- navigate within insert mode
    n = {
        -- switch between windows
        ["<A-h>"] = { "<C-w>h", "window left" },
        ["<A-l>"] = { "<C-w>l", "window right" },
        ["<A-j>"] = { "<C-w>j", "window down" },
        ["<A-k>"] = { "<C-w>k", "window up" },
        -- fast navigation
        ["<C-h>"] = { "^", "fast left" },
        ["<C-l>"] = { "$", "fast right" },
        ["<C-j>"] = { "5j", "fast down" },
        ["<C-k>"] = { "5k", "fast up" },
        ["<A-q>"] = { ":q<CR>", "fast up" },
    },
    i = {
        ["<C-q>"] = { "<ESC>^i", "beginning of line" },
        ["<C-e>"] = { "<End>", "end of line" },
    },
    t = { ["<ESC>"] = { termcodes "<C-\\><C-N>", "escape terminal mode" } },
}
return M
