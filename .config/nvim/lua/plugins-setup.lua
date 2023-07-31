-- Example using a list of specs with the default options

require("lazy").setup({
	-- Themes
	{ "folke/tokyonight.nvim" },
	{ "olimorris/onedarkpro.nvim" },
	{ "Mofiqul/vscode.nvim" },
	{ "daltonmenezes/aura-theme" },
	{ "water-sucks/darkrose.nvim" },

	-- Base
	{ "folke/which-key.nvim" },
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{ "folke/neodev.nvim" },

	-- Lsp config
	{ "nvim-treesitter/completion-treesitter" }, -- Only if you are using TS
	{ "hrsh7th/nvim-cmp" }, -- Autocompletion plugin
	{ "hrsh7th/cmp-nvim-lsp" }, -- LSP source for nvim-cmp
	{ "saadparwaiz1/cmp_luasnip" }, -- Snippets source for nvim-cmp
	{ "L3MON4D3/LuaSnip" }, -- Snippets plugin
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
	},
	{ "williamboman/mason-lspconfig.nvim" },

	-- Terminal
	{ "akinsho/toggleterm.nvim" },

	-- Formatter
	{ "sbdchd/neoformat" },

	-- Buffer line
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },

	-- Snippet
	{ "norcalli/snippets.nvim" },
	{ "hrsh7th/vim-vsnip" },
	{ "SirVer/ultisnips" },
	{ "dcampos/nvim-snippy" },

	-- Lua line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"linrongbin16/lsp-progress.nvim",
		},
	},

	-- Commentary
	{ "b3nj5m1n/kommentary" },

	-- Treesitter
	{ "nvim-treesitter/nvim-treesitter" },

	-- Nvim Neo Tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	},
	{ "nvim-tree/nvim-web-devicons" },

	-- File founder
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- Additions
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
})
