local highlight = {
    -- "CursorColumn",
    "Whitespace",
}

return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("ibl").setup {
            -- space_char_blankline = " ",
            -- show_current_context = true,
            -- show_current_context_start = true,
            indent = { highlight = highlight, char = "" },
            whitespace = {
                highlight = highlight,
                remove_blankline_trail = false,
            },
            scope = { enabled = false },
        }
    end
}
