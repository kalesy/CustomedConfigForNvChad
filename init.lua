local opt = vim.opt
local g = vim.g
local config = require("core.utils").load_config()
-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.ignorecase = false
opt.smartcase = false
opt.swapfile = false
g.mapleader = ';'
-- Neovide gui configuration
if vim.g.neovide then
    vim.o.guifont = "CaskaydiaCove Nerd Font Mono:h13"
    vim.g.neovide_remember_window_size = true
end

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
    ["kyazdani42/nvimtree"] = {
        override_options = {
            view = {
                adaptive_size = true,
                side = "left",
                width = 25,
                hide_root_folder = false,
            },
        }
    },
	["lukas-reineke/indent-black"] = {
		show_current_context = true,
		show_current_context_start = true
	},
    ["NvChad/ui"] = {
        override_options = {
            tabufline = {
                enable = false,
            },
        },
    },
    ["friendly-snippets"] = false
}

