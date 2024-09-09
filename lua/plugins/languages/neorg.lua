-- NOTE: NOTE TAKING
return {
	"nvim-neorg/neorg",
	lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	version = "*", -- Pin Neorg to the latest stable release
	ft = "norg",
	opts = {
		load = {
			["core.defaults"] = {},
			["core.integrations.treesitter"] = {
				configure_parsers = true,
				install_parsers = true,
			},
			["core.concealer"] = {},
			["core.dirman"] = {
				config = {
					workspaces = {
						kuliah = "/home/tenslime/Disks/Data/Notes",
					},
					index = "index.norg",
				},
			},
			["core.completion"] = {
				config = {

					engine = "nvim-cmp",
				},
			},
			["core.integrations.nvim-cmp"] = {},
			["core.ui"] = {},
		},
	},
}
