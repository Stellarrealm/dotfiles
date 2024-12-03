return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = { },
  config = function()
    require("tokyonight").setup({
      style = "night",
      light_style = "day",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        sidebars = "dark",
        floats = "dark",
      },

      on_colors = function(colors)
        colors.border = colors.fg
        -- colors.border = "#c0caf5"  
      end,

      on_highlights = function(hl, colors)
        hl.CursorLineNr = { fg = colors.fg }
        hl.LineNrAbove = { fg = colors.dark5 }
        hl.LineNrBelow = { fg = colors.dark5 }
        hl.StatusLine = { bg = colors.bg }
        hl.StatusLineNC = { bg = colors.bg }
        hl.TelescopeBorder = { bg = colors.bg, fg = colors.bg,}
        hl.TelescopeNormal = { bg = colors.bg, fg = colors.fg,}
        hl.TelescopePreviewBorder = { fg = colors.blue, bg = colors.bg }
        hl.TelescopePreviewTitle = { bg = colors.bg }
        hl.TelescopePromptBorder = { fg = colors.orange, bg = colors.bg }
        hl.TelescopePromptTitle = { bg = colors.bg }
        hl.TelescopeResultsBorder = { fg = colors.blue, bg = colors.bg }
        hl.TelescopeResultsTitle = { bg = colors.bg }
      end
    })
    vim.cmd[[colorscheme tokyonight-night]]
  end,
}
