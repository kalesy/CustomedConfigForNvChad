local opt = vim.opt
local g = vim.g
-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.ignorecase = false
opt.smartcase = false
opt.swapfile = false

opt.splitright = true
opt.splitbelow = true
opt.cursorline = true

opt.scrolloff = 10

opt.autochdir = true --change current path when switch to another file
opt.fileencodings={'utf-8', 'ucs-bom', 'shift-jis', 'gb18030', 'gbk', 'gb2312', 'cp936', 'utf-16-be', 'utf-16-le', 'utf-32-be', 'utf-32-le'}
opt.guicursor='n-v:block,c-sm-i-ci-ve:hor20,r-cr-o:hor20,a:blinkwait700-blickoff400-blinkon250-Cursor/lCursor'
-- Neovide gui configuration
if vim.g.neovide then
    vim.o.guifont = "CaskaydiaCove Nerd Font Mono:h13"
    vim.g.neovide_remember_window_size = true
end
if vim.fn.filereadable(vim.fn.getcwd() .. '/project.godot') == 1 then
    local addr = './godot.pipe'
    if vim.fn.has 'win32' == 1 then
        addr = '127.0.0.1:6005'
    end
    vim.fn.serverstart(addr)
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

