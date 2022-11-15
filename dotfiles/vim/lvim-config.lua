lvim.colorscheme = "nord"

vim.g.nord_borders = true
vim.g.nord_contrast = true
vim.g.nord_italic = true
vim.g.nord_enable_sidebar_background = false

vim.o.relativenumber = true
vim.o.cmdheight = 1

-- Reduce latency for which_key pop up
vim.o.timeoutlen = 50

-- Don't use fish shell in vim as it causes slowness and other issues
-- https://github.com/fish-shell/fish-shell/issues/7004#issuecomment-628530961
vim.o.shell = "/bin/sh"
  
-- Disable unnecessary plugins
lvim.builtin.project.active = false
lvim.builtin.breadcrumbs.active = false

-- Additional Plugins
lvim.plugins = {
  { "shaunsingh/nord.nvim" },
  {
    "ruifm/gitlinker.nvim",
    event = "BufRead",
    config = function()
      require("gitlinker").setup {
        opts = {
          add_current_line_on_normal_mode = true,
          action_callback = require("gitlinker.actions").open_in_browser,
          print_url = false,
        },
        mappings = "<leader>gO",

      }
    end,
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "sudormrfbin/cheatsheet.nvim",
  },
  {
    "tpope/vim-surround",
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require"lsp_signature".on_attach() end,
  },
}

-- Telescope config
lvim.builtin.telescope = {
  defaults = {
    layout_strategy = "horizontal",
    layout_config = { width = 0.9, height = 0.9, prompt_position = "top" }
  }
}

-- Re-enable which_key plugins
lvim.builtin.which_key.setup.plugins = {
  marks = true,
  registers = true,
  presets = {
    operators = true,
    motions = true,
    text_objects = true,
    windows = true,
    nav = true,
    z = true,
    g = true,
  }
}

-- Enable inline git blame
lvim.builtin.gitsigns.opts = {
  -- Disable gitsigns keymapping. They conflict with <leader>+h and are added to which_key anyway.
  keymaps = {},
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 0,
    virt_text_pos = "right_align",
  },
}

-- Use icons instead of highlights for git status in nvim_tree
lvim.builtin.nvimtree.setup.renderer.highlight_git = false

-- Don't highlight any special files in nvim_tree, don't show .git folder
lvim.builtin.nvimtree.setup.renderer.special_files = {}
lvim.builtin.nvimtree.setup.filters.custom = { "^\\.git$" }

-- Don't open nvimtree on half of the screen
-- https://github.com/kyazdani42/nvim-tree.lua/issues/1071
lvim.builtin.nvimtree.setup.actions.open_file.resize_window = true

-- Focus on nvim_tree automatically when opening a directory
lvim.builtin.nvimtree.setup.hijack_directories.enable = true

-- This reloads nvim_tree when lazugit closes
lvim.builtin.nvimtree.setup.auto_reload_on_write = true

-- Remove the stupid scrollbar from lualine
lvim.builtin.lualine.sections.lualine_y = { "location", "progress" }
lvim.builtin.lualine.sections.lualine_z = {}

-- Don't show inline diagnostics messages
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.automatic_servers_installation = true


-- Keymappings
lvim.builtin.which_key.mappings["gL"] = { "<cmd>Gitsigns toggle_current_line_blame<CR>", "Line Blame Toggle" }

lvim.builtin.which_key.mappings["sg"] = { "<cmd>Telescope live_grep<cr>", "Live Grep" }
lvim.builtin.which_key.mappings["sz"] = { "<cmd>Telescope resume<cr>", "Resume search"}

lvim.builtin.which_key.mappings["gO"] = { "<cmd>lua require'gitlinker'.get_buf_range_url('n')<cr>", "Open In Browser" }

lvim.builtin.which_key.mappings["gh"] = { "<cmd>TermExec cmd='lazygit -f %:p; exit'<cr>", "File History" }
lvim.builtin.which_key.mappings["gH"] = { "<cmd>TermExec cmd='lazygit -f %:p:h; exit'<cr>", "Folder History" }

lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "Trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "Quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "Loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "References" },
  e = { "<cmd>TroubleToggle lsp_definitions<cr>", "Definitions" },
  E = { "<cmd>TroubleToggle lsp_type_definitions<cr>", "Type Definitions" },
  i = { "<cmd>TroubleToggle lsp_implementations<cr>", "Implementations" },
}

lvim.keys.normal_mode["<S-h>"] = ":bprevious<CR>"
lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"
