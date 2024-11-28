return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")
    local map = vim.keymap.set

    require("telescope").setup({
      defaults = {
        path_display = { "truncate" },
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            ["<C-u>"] = false,
            ["<c-d>"] = actions.delete_buffer,
            ["<C-j>"] = actions.preview_scrolling_down,
            ["<C-k>"] = actions.preview_scrolling_up,
          },
        },
      },
    })

    map("n", "<leader><leader>", builtin.buffers, { desc = "Show Existing Buffers" })
    map("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
    map("n", "<leader>fg", builtin.live_grep, { desc = "Find Grep" })
    map("n", "<leader>fw", builtin.grep_string, { desc = "Find Word" })
    map("n", "<leader>fh", builtin.help_tags, { desc = "Find Help" })
    map("n", "<leader>fd", builtin.diagnostics, { desc = "Find Diagnostics" })
    map("n", "<leader>fb", builtin.current_buffer_fuzzy_find, { desc = "Find in Current Buffer" })
  end
}
