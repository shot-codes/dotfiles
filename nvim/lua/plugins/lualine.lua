return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return {
        options = {
          component_separators = "",
          section_separators = "",
        },
      }
    end,
  },
}
