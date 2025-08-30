return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" }, -- load when editing files
	dependencies = {
		"mason.nvim",
		"nvimtools/none-ls-extras.nvim",
	},
	-- optional = true,

	opts = function(_, opts)
		local nls = require("null-ls")
		opts.root_dir = opts.root_dir
			or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")

		opts.sources = vim.list_extend(opts.sources or {}, {
			nls.builtins.formatting.stylua,
			nls.builtins.formatting.prettier,
			-- table.insert(opts.sources, nls.builtins.formatting.phpcsfixer),
			-- table.insert(opts.sources, nls.builtins.diagnostics.phpcs),
			require("none-ls.diagnostics.eslint_d"),
			require("none-ls.formatting.eslint_d"),
		})
		return opts
	end,

	config = function(_, opts)
		local nls = require("null-ls")
		nls.setup(opts)

		-- Keymap for formatting
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
