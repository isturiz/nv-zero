return {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',

  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = "Telescope",
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>",   desc = "Find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find matches" },
    { "<leader>fc", "<cmd>Telescope commands<cr>",  desc = "Commands" },
  },
  config = function(_, _)
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local actions_layout = require("telescope.actions.layout")
    local mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    }
    local opts = {
      defaults = {
        mappings = mappings,
      },
    }
    telescope.setup(opts)
  end,
}