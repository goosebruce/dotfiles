return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',
  opts = {
    signature = { enabled = true },
    completion = {
      keyword = { range = 'full' },
      list = { selection = { preselect = false, auto_insert = true } },
      menu = {
        auto_show = true,
        border = 'rounded',
        min_width = 20,
        winhighlight = 'Normal:Normal,FloatBorder:Normal,CursorLine:CursorLine,Search:None', -- Test removing this or adjusting it
        -- draw = {
        --   treesitter = { 'lsp' },
        -- },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 400,
        treesitter_highlighting = true,
        window = { border = 'rounded' },
      },
    },
    snippets = { preset = 'default' },
    sources = {
      cmdline = { 'cmdline' },
    },
  },
}
