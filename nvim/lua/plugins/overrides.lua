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
    "folke/noice.nvim",
    ---@module 'noice'
    opts = {
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
    },
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
          max_height = 20,
          direction_priority = { "n" },
          border = "padded",
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
        completion = {
          ghost_text = {
            enabled = false,
          },
        },
      },
      term = {
        enabled = true,
      },
    },
  },
}
