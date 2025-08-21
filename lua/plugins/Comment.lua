-- Load Comment.nvim
return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      toggler = {
        line = "<leader>c",  -- Space + c to toggle line comment
      },
      opleader = {
        line = "<leader>c",  -- Space + c for motion-based line commenting
        block = "<leader>b", -- Space + b for visual mode block commenting
      },
      extra = {
        above = "<leader>co", -- Space + c + o to comment line above
        below = "<leader>cO", -- Space + c + O to comment line below
        eol = "<leader>ce",   -- Space + c + a to comment at end of line
      },
    })
  end,
}

