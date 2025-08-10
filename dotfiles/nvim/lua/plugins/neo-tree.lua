-- Use Telescope to find and grep through currently selected file
-- https://github.com/nvim-neo-tree/neo-tree.nvim/wiki/Recipes#find-with-telescope
local function getTelescopeOpts(state, path)
	return {
		cwd = path,
		search_dirs = { path },
		attach_mappings = function(prompt_bufnr, map)
			local actions = require("telescope.actions")
			actions.select_default:replace(function()
				actions.close(prompt_bufnr)
				local action_state = require("telescope.actions.state")
				local selection = action_state.get_selected_entry()
				local filename = selection.filename
				if filename == nil then
					filename = selection[1]
				end
				-- any way to open the file without triggering auto-close event of neo-tree?
				require("neo-tree.sources.filesystem").navigate(state, state.path, filename)
			end)
			return true
		end,
	}
end

return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = false,
		opts = {
			popup_border_style = "", -- to use default winborder
			window = {
				position = "float",
				-- match the split mappings with ghostty
				mappings = {
					["v"] = "open_split",
					["V"] = "open_vsplit",
					["f"] = "telescope_find",
					["g"] = "telescope_grep",
					["/"] = "noop", -- disable fuzzy finder
					["F"] = "filter_on_submit",
					["<C-f>"] = "clear_filter",
					["h"] = "lazygit_history",
				},
			},
			filesystem = {
				follow_current_file = {
					enabled = true,
				},
			},
			buffers = {
				follow_current_file = {
					enabled = true,
				},
			},
			commands = {
				telescope_find = function(state)
					local node = state.tree:get_node()
					local path = node:get_id()
					if node.type ~= "directory" then
						path = node:get_parent_id()
					end
					require("telescope.builtin").find_files(getTelescopeOpts(state, path))
				end,
				telescope_grep = function(state)
					local node = state.tree:get_node()
					local path = node:get_id()
					if node.type ~= "directory" then
						path = node:get_parent_id()
					end
					require("telescope.builtin").live_grep(getTelescopeOpts(state, path))
				end,
				lazygit_history = function(state)
					local node = state.tree:get_node()
					local path = node:get_id()
					require("lazygit").lazygitfilter(path)
				end,
			},
			default_component_configs = {
				git_status = {
					symbols = {
						added = "+",
						modified = "M",
						deleted = "D",
						renamed = "R",
						untracked = "?",
						-- We don't need those icons, as we use lazygit to manage status
						ignored = "",
						unstaged = "",
						staged = "",
						conflict = "",
					},
				},
			},
		},
		keys = {
			{ "<leader>e", "<cmd>Neotree toggle float reveal<cr>", desc = "File Explorer" },
		},
	},
}
