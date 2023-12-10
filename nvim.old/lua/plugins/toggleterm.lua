return {
  {
    "akinsho/toggleterm.nvim",
    config = true,
    cmd = "ToggleTerm",
    keys = {
      { "<F5>", "<cmd>TermExec cmd='lazygit'<cr>", desc = "Toggle lazgit" },
      { "<F4>", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
    },
    opts = {
      open_mapping = [[<F4>]],
      direction = "float",
      shade_filetypes = {},
      hide_numbers = true,
      insert_mappings = true,
      terminal_mappings = true,
      start_in_insert = true,
      close_on_exit = true,
      float_opts = {
        border = "curved",
      },
      highlights = {
        FloatBorder = {
          guifg = "#404040",
        },
      },
    },
  },
}
