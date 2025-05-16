return {
  -- Add your plugins here
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- Ensure it loads before other plugins
    config = function()
      require("everforest").setup({
        -- Your everforest-specific config
      })
    end,
  }
}
