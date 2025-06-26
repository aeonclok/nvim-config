return {
  -- Add mini.nvim
  {
    "echasnovski/mini.nvim",
    version = false, -- Use the latest version (or set to "stable" if preferred)
    config = function()
      -- Configure the mini.nvim modules you want to use
      -- require("mini.surround").setup()
      require("mini.comment").setup()
      require("mini.pairs").setup()
      require("mini.jump2d").setup({
        -- Optional: customize mini.jump2d settings to mimic flash.nvim
        labels = "abcdefghijklmnopqrstuvwxyz",
        view = {
          n_steps_ahead = 0, -- Immediate visualization
        },
      })
    end,
  },

  -- Disable the LazyVim equivalents
  -- { "folke/flash.nvim", enabled = false },
  -- { "echasnovski/mini.surround", enabled = false }, -- If LazyVim already uses mini.surround
  { "numToStr/Comment.nvim", enabled = false }, -- To disable LazyVim's default comment plugin
}
