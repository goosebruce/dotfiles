return {
  'folke/noice.nvim',
  dependencies = { 'MunifTanjim/nui.nvim' },
  init = function()
    vim.opt.lazyredraw = false
  end,
  opts = {
    views = {
      notify = {
        replace = true,
      },
    },
    notify = { enabled = true },
    lsp = {
      progress = {
        view = 'notify',
      },
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = false,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = false,
      },
      window = {
        border = 'rounded',
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
      },
    },
    presets = {
      bottom_search = false, -- use a classic bottom cmdline for search
      command_palette = true, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = true, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = true, -- add a border to hover docs and signature help
    },
  },
}
