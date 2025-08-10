return {
	"kdheepak/lazygit.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	init = function()
		-- Create a command showing Git Log of file's parent dir
		vim.api.nvim_create_user_command("LazyGitDir", function()
			require("lazygit").lazygitfilter(vim.fn.expand("%:p:h"))
		end, {})
	end,
	keys = {
		{ "<leader>gg", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit" },
		{ "<leader>gh", "<cmd>LazyGitFilterCurrentFile<cr>", desc = "Git History File" },
		{ "<leader>gH", "<cmd>LazyGitDir<cr>", desc = "Git History Dir" },
	},
}
