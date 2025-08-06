return {
	"nvim-tree/nvim-tree.lua",
	version = "1.13.0",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
    opts = {

    },
    keys = {
		{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "File Explorer" },
    }
}
