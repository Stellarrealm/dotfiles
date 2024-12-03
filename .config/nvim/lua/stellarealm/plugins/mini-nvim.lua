return {
  {
    'echasnovski/mini.comment',
    event = "VeryLazy",
    version = false,
    config = function()
      require("mini.comment").setup({})
    end
  },
  {
    'echasnovski/mini.surround',
    event = "VeryLazy",
    version = false,
    config = function()
      require("mini.surround").setup({})
    end
  },
}
