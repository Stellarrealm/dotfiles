return {
  {
    -- completion engine
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- completions for file paths
      "hrsh7th/cmp-path",
      -- completion from the current buffer
      "hrsh7th/cmp-buffer",
      -- completion from LSP
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()

      local luasnip = require("luasnip")
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end
        },

        window = {
          completion = cmp.config.window.bordered({
            winhighlight = "Normal:Normal,FloatBorder:CmpBorder,Search:None",
          }),
          documentation = cmp.config.window.bordered({
            winhighlight = "Normal:Normal,FloatBorder:CmpBorder",
          }),
        },

        sources = cmp.config.sources(
          {
            { name = "nvim_lsp" },
            { name = "luasnip" },
            { name = "path" }
          },
          {
            { name = "buffer", keyword_length = 3 },
          }),

        mapping = {
          ['<C-E>'] = cmp.mapping.abort(),
          ["<C-B>"] = cmp.mapping.scroll_docs(-4),
          ["<C-F>"] = cmp.mapping.scroll_docs(4),
          ["<C-P>"] = cmp.mapping.select_prev_item(),
          ["<C-N>"] = cmp.mapping.select_next_item(),
          ["<C-Y>"] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }),

          ["<Tab>"] = cmp.mapping(function(fallback)
            if luasnip.locally_jumpable(1) then
              luasnip.jump(1)
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        },

        formatting = {
          expandable_indicator = true,

          format = function(entry, vim_item)
            local menu = {
              nvim_lsp = "LSP",
              luasnip = "Snippet",
              buffer = "Buffer",
              path = "Path",
            }

            vim_item.menu = menu[entry.source.name]
            return vim_item
          end,
        }
      })
    end
  },
  {
    -- snippet engine
    "L3MON4D3/LuaSnip",
    dependencies = {
      -- bridge between LuaSnip and nvim-cmp
      "saadparwaiz1/cmp_luasnip",
      -- snippets collection
      "rafamadriz/friendly-snippets",
    }
  }
}
