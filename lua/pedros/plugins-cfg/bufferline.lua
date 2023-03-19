local status, bufferline = pcall(require, 'bufferline')
if not status then
    print("error when loading bufferline plugin")
    return
end


return bufferline.setup({
    options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        numbers = "both", -- | "ordinal" | "buffer_id" | "both",
        close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        -- indicator_icon = "▎", -- Giving an error
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        tab_size = 18,
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,
        separator_style = "thick",
        enforce_regular_tabs = false,
        always_show_bufferline = true,

        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
    },
})
