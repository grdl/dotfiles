lvim.colorscheme = "nord"

vim.g.nord_borders = true
vim.g.nord_contrast = true
vim.g.nord_italic = true
vim.g.nord_enable_sidebar_background = false

-- Enable terminal to use LazyGit
lvim.builtin.terminal.active = true

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
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.nvimtree.git_hl = 0

-- Don't highlight any special files in nvim_tree
vim.g.nvim_tree_special_files = {}

-- Install all maintained treesitter plugins
lvim.builtin.treesitter.ensure_installed = "maintained"

-- Key mappings for which_key popups
lvim.builtin.which_key.mappings["gL"] = { "<cmd>Gitsigns toggle_current_line_blame<CR>", "Line Blame Toggle" }
lvim.builtin.which_key.mappings["t"] = { "<cmd>TroubleToggle<CR>", "Trouble" }

lvim.builtin.which_key.mappings["s"] = {
	name = "Search",
	e = { "<cmd>Telescope file_browser<cr>", "File Browser" },
	f = { "<cmd>Telescope find_files<cr>", "Files" },
	H = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
	h = { "<cmd>Telescope search_history<cr>", "Search history" },
	M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
	p = { "<cmd>Telescope projects<CR>", "Projects" },
	b = { "<cmd>Telescope buffers<cr>", "Buffers" },
	B = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Current Buffer" },
	g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
	R = { "<cmd>Telescope resume<cr>", "Resume" },
	k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
	C = { "<cmd>Telescope commands<cr>", "Commands" },
	c = { "<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>", "Colorscheme" },
}

-- Additional Plugins
lvim.plugins = {
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{ "shaunsingh/nord.nvim" },
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
lvim.builtin.lualine.sections.lualine_y = { "location", "progress" }
lvim.builtin.lualine.sections.lualine_z = {}

-- Don't show inline diagnostics messages
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.automatic_servers_installation = true

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{
		exe = "prettier",
	},
	{
		exe = "stylua",
	},
})

lvim.format_on_save = true
