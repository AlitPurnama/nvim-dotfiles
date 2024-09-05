return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = function(_, opts)
			local trouble = require("trouble")
			local symbols = trouble.statusline({
				mode = "lsp_document_symbols",
				groups = {},
				title = false,
				filter = { range = true },
				format = "{kind_icon}{symbol.name:Normal}",
				hl_group = "lualine_c_normal",
			})
			opts.sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			}
			table.insert(opts.sections.lualine_c, {
				symbols.get,
				cond = symbols.has,
			})
			opts.nord_disable_background = true
			opts.theme = "nord"
		end,
	},
	{
		"goolord/alpha-nvim",
		dependencies = {
			"echasnovski/mini.icons",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local config = require("alpha.themes.theta").config
			config.layout[2].val = {
				"████████╗███████╗███╗   ██╗███████╗██╗     ██╗███╗   ███╗███████╗",
				"╚══██╔══╝██╔════╝████╗  ██║██╔════╝██║     ██║████╗ ████║██╔════╝",
				"	  ██║   █████╗  ██╔██╗ ██║███████╗██║     ██║██╔████╔██║█████╗",
				"	  ██║   ██╔══╝  ██║╚██╗██║╚════██║██║     ██║██║╚██╔╝██║██╔══╝",
				"	  ██║   ███████╗██║ ╚████║███████║███████╗██║██║ ╚═╝ ██║███████╗",
				"	  ╚═╝   ╚══════╝╚═╝  ╚═══╝╚══════╝╚══════╝╚═╝╚═╝     ╚═╝╚══════╝",
				" 												@instagram",
			}
			require("alpha").setup(config)
		end,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	{
		"shaunsingh/nord.nvim",
		config = function()
			vim.cmd.colorscheme("nord")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
}
