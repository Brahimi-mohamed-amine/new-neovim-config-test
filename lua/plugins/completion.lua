return {
	"saghen/blink.cmp",
	dependencies = {
		"rafamadriz/friendly-snippets",
		"folke/lazydev.nvim",
	},

	version = "1.*",

	opts = {
		-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
		-- 'super-tab' for mappings similar to vscode (tab to accept)
		-- 'enter' for enter to accept
		-- 'none' for no mappings
		keymap = { preset = "super-tab" },

		appearance = {
			nerd_font_variant = "mono",
		},

		-- (Default) Only show the documentation popup when manually triggered
		completion = {
			accept = {
				-- experimental auto-brackets support
				auto_brackets = {
					enabled = true,
				},
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
			},
		},

		sources = {
			default = { "lsp", "buffer", "lazydev", "path", "snippets", "buffer" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					-- make lazydev completions top priority (see `:h blink.cmp`)
					score_offset = 100,
				},
				buffer = {
					max_items = 50, -- don’t flood menu
				},
			},
		}, -- lua vim.snippets.expand()

		-- fuzzy = { implementation = "prefer_rust_with_warning" }
		fuzzy = { implementation = "prefer_rust_with_warning" }, -- don’t fallback to lua
	},
	opts_extend = { "sources.default" },
}
