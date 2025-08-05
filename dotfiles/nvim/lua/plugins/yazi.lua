return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",

  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },

  keys = {
    {"<leader>yy", "<cmd>Yazi cwd<cr>", desc = "Open Yazi in current dir"},
  },

  opts = {
    open_for_directories = true,
  },

  init = function()
    -- If you use `open_for_directories=true`, this is recommended. More details: https://github.com/mikavilpas/yazi.nvim/issues/802
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
}
