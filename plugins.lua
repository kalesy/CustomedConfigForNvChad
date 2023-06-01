return {
    ["cameron/rainbow_csv"] = {},
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
    ["friendly-snippets"] = false
}
