return {
  "nvim-treesitter/nvim-treesitter",
  enabled = true,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "css",
        "html",
        "javascript",
        "json",
        "lua",
        "luadoc", -- investigar diferencia con lua
        "markdown",
        "markdown_inline", -- investigar
        -- "typescript",
        "regex",
        "vim",
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
}
