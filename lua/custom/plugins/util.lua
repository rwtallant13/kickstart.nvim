return {
  {
    'folke/snacks.nvim',
    opts = {
      indent = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      dashboard = { enabled = true },
      statuscolumn = { enabled = false },
      toggle = {},
      words = { enabled = true },
      zen = { enabled = true },
    },
  },
  {
    'luukvbaal/nnn.nvim',
    opts = {
      vim.keymap.set({ 'n', 't' }, '<leader>n', '<cmd>NnnExplorer<CR>'),
      vim.keymap.set({ 'n', 't' }, '<leader>p', '<cmd>NnnPicker<CR>'),
    },
  },
  {
    'AckslD/nvim-neoclip.lua',
    dependencies = {
      { 'kkharji/sqlite.lua', module = 'sqlite' },
      { 'nvim-telescope/telescope.nvim' },
    },
    opts = {},
  },
}
