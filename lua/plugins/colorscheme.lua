return {
  "wuelnerdotexe/vim-enfocado",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- vim.g.enfocado_style = 'neon'
    vim.g.enfocado_style = 'nature'
    vim.cmd([[colorscheme enfocado]])
  end,
}
