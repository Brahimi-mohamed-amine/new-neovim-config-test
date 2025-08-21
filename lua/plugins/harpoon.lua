return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<Leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    --vim.keymap.set("n", "<Leader>k", function() harpoon:list():select(1) end)
    --vim.keymap.set("n", "<Leader>j", function() harpoon:list():select(2) end)
    --vim.keymap.set("n", "<Leader>h", function() harpoon:list():select(3) end)
    --vim.keymap.set("n", "<Leader>l", function() harpoon:list():select(4) end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<Leader>p", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<Leader>n", function() harpoon:list():next() end)
  end,
}
