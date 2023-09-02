return {
  "folke/noice.nvim",
  event = "VeryLazy",
  enable = true,
  opts = {
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  keys = {
    { "<leader>ncl", function() require("noice").cmd("last") end, desc = "Noice Last Message" },
  }
}
