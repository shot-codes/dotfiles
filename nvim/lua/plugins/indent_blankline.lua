return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    init = function()
      vim.api.nvim_command("highlight IblScope guifg=#ff0000")
    end,
    opts = {
      indent = {
        char = "▏",
        tab_char = "▏",
      },
      scope = {
        char = "█",
      },
    },
  },
}
