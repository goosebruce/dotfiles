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
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
                autoSearchPath = true,
                inlayHints = {
                  callArgumentNames = true,
                },
                extraPaths = {
                  "...",
                  "...",
                },
              },
              python = {
                venv = ".venv",
              },
            },
          },
        },
      },
    },
  },
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
      lsp = {
        enabled = true,
        -- Lsp Progress is formatted using the builtins for lsp_progress. See config.format.builtin
        -- See the section on formatting for more details on how to customize.
        --- @type NoiceFormat|string
        format = "lsp_progress",
        --- @type NoiceFormat|string
        format_done = "lsp_progress_done",
        throttle = 1000 / 30, -- frequency to update lsp progress message
        view = "notify",
      },
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = true, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
    },
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
      cmdline = {
        keymap = {
          -- recommended, as the default keymap will only show and select the next item
          ["<Tab>"] = { "show", "accept" },
        },
        completion = {
          menu = {
            auto_show = function(ctx)
              return vim.fn.getcmdtype() == ":"
              -- enable for inputs as well, with:
              -- or vim.fn.getcmdtype() == '@'
            end,
          },
        },
      },
      completion = {
        menu = {
          max_height = 20,
          direction_priority = { "n" },
          max_height = 20,
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
