return {
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {
        ignore_filetypes = { '.env' },
        log_level = 'off',
        color = {
          suggestion_color = '#fffff0',
          cterm = 244,
        },
      }
    end,
  },
  {
    '3fonov/dbt-nvim',
  },
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
      'TmuxNavigatorProcessList',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    enabled = false,
  },

  -- {
  --   'stevearc/conform.nvim',
  --   event = { 'BufWritePre' },
  --   cmd = { 'ConformInfo' },
  --   keys = {
  --     {
  --       -- Customize or remove this keymap to your liking
  --       '<leader> cf',
  --       function()
  --         require('conform').format { async = true }
  --       end,
  --       mode = '',
  --       desc = 'Format buffer',
  --     },
  --   },
  --   -- This will provide type hinting with LuaLS
  --   ---@module "conform"
  --   ---@type conform.setupOpts
  --   opts = {
  --     -- Define your formatters
  --     formatters_by_ft = {
  --       go = { 'gofmt' },
  --       lua = { 'stylua' },
  --       python = { 'ruff' },
  --       javascript = { 'prettier', stop_after_first = true },
  --     },
  --     -- Set default options
  --     default_format_opts = {
  --       lsp_format = 'fallback',
  --     },
  --     -- Customize formatters
  --     formatters = {
  --       shfmt = {
  --         prepend_args = { '-i', '2' },
  --       },
  --     },
  --   },
  --   init = function()
  --     -- If you want the formatexpr, here is the place to set it
  --     vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  --   end,
  -- },
  -- {
  --   'olexsmir/gopher.nvim',
  --   ft = 'go',
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'nvim-treesitter/nvim-treesitter',
  --     -- 'mfussenegger/nvim-dap', -- (optional) only if you use `gopher.dap`
  --   },
  --   ---@type gopher.Config
  --   opts = {},
  -- },
}
