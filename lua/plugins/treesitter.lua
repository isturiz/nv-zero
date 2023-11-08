return {
    {
        "nvim-treesitter/nvim-treesitter",
        enabled = true,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup {
                ensure_installed = {

                    -- Web
                    "html",
                    "css",
                    "javascript",

                    -- Others Web
                    "json",
                    "typescript",

                    -- Lua
                    "lua",
                    "luadoc", -- investigar diferencia con lua

                    -- Vim
                    "vim",

                    -- Markdown
                    "markdown",
                    "markdown_inline", -- investigar

                    -- Regular Expression
                    "regex",

                    -- bash
                    "bash",

                    -- Python
                    "python",
                },

                highlight = {
                    enable = true,
                },
                indent = {
                    enable = true,
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn",
                        node_incremental = "grn",
                        scope_incremental = "grc",
                        node_decremental = "grm",
                    },
                },
            }
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            opts = {
                autotag = {
                    enable = true,

                    filetypes = {
                        "html",
                        "javascript",
                        "typescript",
                        "jsx",
                        "tsx",
                    }
                },
            },
        },
    }
}
