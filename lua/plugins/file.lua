return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		opts = {
			window = {
				width = 30,
			},
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim", "folke/trouble.nvim" },
		config = function()
			local open_with_trouble = require("trouble.sources.telescope").open

			local telescope = require("telescope")

			telescope.setup({
				defaults = {
					mappings = {
						i = { ["<c-t>"] = open_with_trouble },
						n = { ["<c-t>"] = open_with_trouble },
					},
				},
			})
		end,
	},
	{
		"ThePrimeagen/harpoon",
		config = function()
			require("telescope").load_extension("harpoon")
			require("harpoon").setup({
				global_settings = {
					save_on_toggle = false,
					save_on_change = true,
					enter_on_sendcmd = false,
				},
			})
		end,
	},
	{
		"ggandor/leap.nvim",
		opts = {},
	},
}
