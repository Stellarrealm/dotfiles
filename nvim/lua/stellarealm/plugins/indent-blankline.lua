return {
  "lukas-reineke/indent-blankline.nvim",
  event = "BufReadPre",
  opts = function()
    return {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { show_start = false, show_end = false },
      exclude = {
        filetypes = {
          "help",
          "lazy",
          "mason",
          "neo-tree",
        },
      },
    }
  end,
  main = "ibl",
}
