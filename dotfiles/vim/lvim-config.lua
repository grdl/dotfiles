lvim.colorscheme = "onedarker"

-- Enable terminal to use LazyGit
lvim.builtin.terminal.active = true

-- Enable inline git blame
lvim.builtin.gitsigns.opts = {
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 0,
    virt_text_pos = "right_align",
  },
}

-- Use icons instead of highlights for git status in nvim_tree
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.nvimtree.git_hl = 0
lvim.builtin.nvimtree.hide_dotfiles = 0

-- Don't highlight any special files in nvim_tree
vim.g.nvim_tree_special_files = {}

-- Install all maintained treesitter plugins
lvim.builtin.treesitter.ensure_installed = "maintained"

-- Key mappings for which_key popups
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["gL"] = { "<cmd>Gitsigns toggle_current_line_blame<CR>", "Line Blame Toggle" }
lvim.builtin.which_key.mappings["t"] = { "<cmd>TroubleToggle<CR>", "Trouble" }

-- Additional Plugins
lvim.plugins = {
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
}

lvim.autocommands.custom_groups = {
  -- Refresh NvimTree after lazygit terminal is closed
  { "TermLeave", "*", "NvimTreeRefresh" },
}

vim.o.relativenumber = true
vim.o.cmdheight = 1

-- Make telescope window bigger
lvim.builtin.telescope.defaults.layout_config.width = 0.9

-- Remove the stupid scrollbar from lualine
lvim.builtin.lualine.sections.lualine_x = {"encoding", "filetype"}
lvim.builtin.lualine.sections.lualine_y = { "location", "progress"}
lvim.builtin.lualine.sections.lualine_z = {}

-- Don't show inline diagnostics messages
lvim.lsp.diagnostics.virtual_text = false
