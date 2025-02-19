return {
  --   "saghen/blink.cmp",
  --   ---@module 'blink.cmp'
  --   ---
  --   ---@type blink.cmp.Config
  --   ---
  --   opts = {
  --     keymap = {
  --       preset = "super-tab",
  --     },
  --     completion = {
  --       menu = {
  --         border = "single",
  --       },
  --       trigger = {
  --         show_in_snippet = false,
  --         show_on_keyword = true,
  --         show_on_accept_on_trigger_character = true,
  --       },
  --       list = {
  --         selection = {
  --           auto_insert = false,
  --           preselect = true,
  --         },
  --       },
  --       documentation = {
  --         auto_show_delay_ms = 100,
  --         auto_show = true,
  --         treesitter_highlighting = true,
  --         window = { border = "single" },
  --       },
  --       ghost_text = {
  --         enabled = true,
  --       },
  --     },
  --     signature = {
  --       enabled = true,
  --       window = { border = "single" },
  --     },
  --     sources = {
  --       cmdline = { "cmdline" },
  --     },
  --   },
  -- }
  --
  {
    "supermaven-inc/supermaven-nvim",
    ---@module 'supermaven'
    opts = {
      ignore_filetypes = {
        "cpp",
        ".env",
        ".git",
      },
      color = {
        suggestion_color = "#5f7e97",
        cterm = 244,
      },
      disable_inline_completion = false,
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
  },

  {
    "saghen/blink.cmp",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = "enter",
      },
      completion = {
        menu = {
          direction_priority = { "n" },
          border = "single",
        },
        list = {
          selection = {
            auto_insert = false,
            preselect = false,
          },
        },
        ghost_text = {
          show_with_selection = true,
          enabled = true,
        },
        trigger = {
          show_in_snippet = false,
        },
      },
      signature = {
        enabled = true,
      },
      cmdline = {
        enabled = true,
        sources = { "path", "buffer", "lsp", "cmdline" },
      },
      term = {
        enabled = true,
      },
    },
  },
}
