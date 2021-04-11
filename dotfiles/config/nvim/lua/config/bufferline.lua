
-- colors for active , inactive uffer tabs
require "bufferline".setup {
    options = {
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 18,
        enforce_regular_tabs = true,
        view = "multiwindow",
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = "thin"
    },
    highlights = {
        background = {
            guifg = comment_fg,
            guibg = "#1e222a"
        },
        fill = {
            guifg = comment_fg,
            guibg = "#1e222a"
        },
        buffer_selected = {
            guifg = normal_fg,
            guibg = "#282c34",
            gui = ""
        },
        buffer_visible = {
            guifg = "#3e4451",
            guibg = "#1e222a"
        },
        separator_visible = {
            guifg = "#1e222a",
            guibg = "#1e222a"
        },
        separator_selected = {
            guifg = "#1e222a",
            guibg = "#1e222a"
        },
        separator = {
            guifg = "#1e222a",
            guibg = "#1e222a"
        },
        indicator_selected = {
            guifg = "#1e222a",
            guibg = "#1e222a"
        },
        modified_selected = {
            guifg = normal_fg,
            guibg = "#282c34"
        },
        modified_visible = {
            guifg = comment_fg,
            guibg = "#1e222a"
        }
    }
}

local opt = {silent = true}

--command that adds new buffer and moves to it
vim.api.nvim_command "com -nargs=? -complete=file_in_path New badd <args> | blast"
vim.api.nvim_set_keymap("n", "<S-b>", ":New ", opt)

--removing a buffer
vim.api.nvim_set_keymap("n", "<S-f>", [[<Cmd>bdelete<CR>]], opt)

-- tabnew and tabprev
vim.api.nvim_set_keymap("n", "<S-l>", [[<Cmd>BufferLineCycleNext<CR>]], opt)
vim.api.nvim_set_keymap("n", "<S-s>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
