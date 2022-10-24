local M = {}
M.disabled = { }
M.nvterm = { }
M.general = {
    -- navigate within insert mode
    n = {
        -- switch between windows
        ["<A-h>"] = { "<C-w>h", "window left" },
        ["<A-l>"] = { "<C-w>l", "window right" },
        ["<A-j>"] = { "<C-w>j", "window down" },
        ["<A-k>"] = { "<C-w>k", "window up" },
    }
}
return M
