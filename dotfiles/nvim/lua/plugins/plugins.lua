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
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			current_line_blame = true,
			current_line_blame_opts = {
				delay = 0,
				virt_text_pos = "right_align",
			},
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		keys = {
			{ "<leader>fF", "<cmd>Telescope find_files cwd=%:p:h<cr>", desc = "Find Files (dir of current file)" },
			{ "<leader>sG", "<cmd>Telescope live_grep cwd=%:p:h<cr>", desc = "Grep (dir of current file)" },
		},
	},
	-- Disable inlay hints
	{
		"neovim/nvim-lspconfig",
		opts = {
			inlay_hints = { enabled = false },
		},
	},
}
