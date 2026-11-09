return {
  'nickjvandyke/opencode.nvim',
  dependencies = {
    { 'folke/snacks.nvim', lazy = false, priority = 1000, opts = { input = {}, picker = {}, terminal = {} } },
  },
  config = function()
    local cmd = 'opencode'
    local term_opts = { win = { position = 'right', enter = false } }

    vim.g.opencode_opts = {
      server = {
        start = function()
          require('snacks.terminal').open(cmd, term_opts)
        end,
      },
    }

    vim.o.autoread = true

    local opencode = require 'opencode'

    vim.keymap.set({ 'n', 'x' }, '<leader>oa', function()
      opencode.ask '@this: '
    end, { desc = 'opencode ask here' })

    vim.keymap.set({ 'n', 'x' }, '<leader>os', opencode.select, { desc = 'opencode select action' })

    vim.keymap.set({ 'n', 'x' }, '<leader>op', function()
      opencode.prompt '@this'
    end, { desc = 'opencode prompt @this' })

    vim.keymap.set('n', '<leader>oo', function()
      require('snacks.terminal').toggle(cmd, term_opts)
    end, { desc = 'opencode toggle' })
  end,
}
