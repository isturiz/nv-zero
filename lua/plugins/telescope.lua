return {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',

  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>",   desc = "Find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find matches" },
    { "<leader>fc", "<cmd>Telescope commands<cr>",  desc = "Commands" },
  },
  config = function(_, _)
    local mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    }
  end,

}