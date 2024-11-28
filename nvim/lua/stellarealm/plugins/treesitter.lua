return {
 "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "html",
        "javascript",
        "lua",
        "markdown",
        "markdown_inline",
        "regex",
        "vim",
        "vimdoc",
        "query"
      },

      highlight = {
        enable = true
      },

      indent = {
        enable = true
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<leader>ss",
          node_incremental = "<leader>si",
          scope_incremental = "<leader>sc",
          node_decremental = "<leader>sd",
        }
     }
    })
  end,
}
