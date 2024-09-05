local wk = require("which-key")

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

--local actions = require("telescope.actions")

wk.add({
	{ "<leader>f", group = "file" }, -- group
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
	{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep", mode = "n" },
	-- BUFFER
	{ "<leader>b", group = "buffer" },
	{ "<leader>bx", "<cmd>BufferClose<cr>", desc = "Close Buffer", mode = "n" },
	{ "<leader>bf", "<cmd>Telescope buffers<cr>", desc = "Find Buffers", mode = "n" },

	-- HARPOON
	{ "<leader>a", mark.add_file, desc = "Mark file", mode = "n" },
	{ "<leader>h", ui.toggle_quick_menu, desc = "Toggle Harpoon Menu", mode = "n" },
	{
		"<leader>1",
		function()
			ui.nav_file(1)
		end,
		desc = "Nav File 1",
		mode = "n",
		hidden = true,
	},
	{
		"<leader>2",
		function()
			ui.nav_file(2)
		end,
		desc = "Nav File 2",
		mode = "n",
		hidden = true,
	},
	{
		"<leader>4",
		function()
			ui.nav_file(3)
		end,
		desc = "Nav File 3",
		mode = "n",
		hidden = true,
	},
	{
		"<leader>4",
		function()
			ui.nav_file(4)
		end,
		desc = "Nav File 4",
		mode = "n",
		hidden = true,
	},
	{
		"<leader><tab>",
		function()
			ui.nav_next()
		end,
		desc = "Harpoon next",
		mode = "n",
		hidden = true,
	},
	{
		"<leader><S-tab>",
		function()
			ui.nav_prev()
		end,
		desc = "Harpoon previous",
		mode = "n",
		hidden = true,
	},
	{ "<leader>g", group = "git" },

	{ "<leader>w", group = "windows" },

	-- Split resizing
	{ "<leader>wH", "<C-w><", desc = "Resize Left", mode = "n" },
	{ "<leader>wJ", "<C-w>+", desc = "Resize Down", mode = "n" },
	{ "<leader>wK", "<C-w>-", desc = "Resize Up", mode = "n" },
	{ "<leader>wL", "<C-w>>", desc = "Resize Right", mode = "n" },

	{ "ss", ":split<CR>", desc = "Horizontal Split", mode = "n", hidden = true },
	{ "sv", ":vsplit<CR>", desc = "Vertical Split", mode = "n", hidden = true },

	--
	{ "<leader>t", ":ToggleTerm<CR>", desc = "Toggle term", mode = "n" },
})

vim.api.nvim_set_keymap("n", "<C-n>", ":Neotree toggle left<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<tab>", ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-tab>", ":BufferPrevious<CR>", { noremap = true, silent = true })

-- Move between splits using Ctrl + h/j/k/l
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
