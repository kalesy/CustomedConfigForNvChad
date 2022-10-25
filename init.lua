local opt = vim.opt
local g = vim.g
local config = require("core.utils").load_config()
-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
g.mapleader = ';'

return {
    ["nvim-telescope/telescope"] = {
        override_options = {
            mappings = {
                i = {
                    -- move 
                    ["<C-j>"] = "move_selection_next",
                    ["<C-k>"] = "move_selection_previous",
                    ["<Down>"] = "move_selection_next",
                    ["<Up>"] = "move_selection_previous",
                    -- history
                    ["<C-n>"] = "cycle_history_next",
                    ["<C-p>"] = "cycle_history_prev",
                    -- shut
                    ["<C-c>"] = "close",
                    -- preview scroll
                    ["<C-u>"] = "preview_scrolling_up",
                    ["<C-d>"] = "preview_scrolling_down",
                }
            },
        }
    },
}
