return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "javascript", "html", "css", "php" },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      -- autotag = { enable = true },

      incremental_selection = {
        enable = true,
        keymaps = {
          --init_selection = "<leader>ss",
          --node_incremental = "<Leader>si",
          --scope_incremental = "<Leader>sc",
          --node_decremental = "<Leader>sd",
        },
      },
    })

    vim.keymap.set("n", "<Leader>t", ":InspectTree<CR>", {})
  end,
}
