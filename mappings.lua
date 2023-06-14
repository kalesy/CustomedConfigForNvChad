-- Custom mappings
local function termcodes(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local M = {}
M.disabled = {
    n = {
        ["<C-c>"] = {}
    }
}
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
        ["t"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
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
        -- resize window
        ["<C-Left>"] = { ":vertical resize -5<CR>", "shunk horizontal window size" },
        ["<C-Right>"] = { ":vertical resize +5<CR>", "expand horizontal window size" },
        ["<C-Up>"] = { ":resize -5<CR>", "shunk horizontal window size" },
        ["<C-Down>"] = { ":resize +5<CR>", "expand horizontal window size" },
    },
    i = {
        ["<C-q>"] = { "<ESC>^i", "beginning of line" },
        ["<C-e>"] = { "<End>", "end of line" },
    },
    t = {
        ["<ESC>"] = { termcodes "<C-\\><C-N>", "escape terminal mode" },
        ["<A-h>"]= {"<C-\\><C-N><C-w>h", "go left"},
        ["<A-j>"]= {"<C-\\><C-N><C-w>j", "go right"},
        ["<A-k>"]= {"<C-\\><C-N><C-w>k", "go up"},
        ["<A-l>"]= {"<C-\\><C-N><C-w>l", "go down"},
    },
    v = {
        ['J'] = {":move '>+1<CR>gv-gv", "move text down"},
        ['K'] = {":move '<-2<CR>gv-gv", "move text up"},
    }
}
M.tabufline = {
    n = {

        ["<A-x>"] = {
          function()
            require("nvchad_ui.tabufline").close_buffer()
          end,
          "close buffer",
        },
    },
}
M.debug = { }
return M
