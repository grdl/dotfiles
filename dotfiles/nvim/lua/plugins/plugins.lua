return {
  { "shaunsingh/nord.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },

  {
    "ruifm/gitlinker.nvim",
    config = function()
      require("gitlinker").setup({
        opts = {
          action_callback = require("gitlinker.actions").open_in_browser,
          print_url = false,
        },
        mappings = "<leader>gO",
      })
    end,
    keys = {
      { "<leader>gO", desc = "Open in browser" },
    },
  },
}
