return {
	-- Mason
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	-- Mason + LSP integration
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = {
					"lua_ls",
					"php",
					"intelephense",
					"ast-grep",
					exclude = { "alex", "efm" },
				},
			})
		end,
	},
	-- LSP configs
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
			"folke/lazydev.nvim",
			"folke/neoconf.nvim",
		},
		config = function()
			require("neoconf").setup({})

			local lspconfig = require("lspconfig")

			-- PHP
			lspconfig.intelephense.setup({})
			lspconfig.phpactor.setup({})

			-- JS / TS / React
			lspconfig.ts_ls.setup({})
			lspconfig.html.setup({})
			lspconfig.cssls.setup({})

			-- ESLint LSP only for diagnostics (no formatting)
			lspconfig.eslint.setup({
				settings = { workingDirectories = { mode = "auto" }, format = false },
			})

			-- Keymaps
			local opts = { silent = true, noremap = true }
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		end,
	},
}
