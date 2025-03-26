-- [[ Basic Keymaps ]]
-- Personal Keymaps
--
vim.keymap.set('n', ';', ':', { desc = 'CMD enter command mode' })
vim.keymap.set('v', ';', '<Esc>')
vim.keymap.set('n', '<leader>sr', ':%s@@@<left><left>', { desc = 'Find and Replace' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, desc = 'Move up page and center' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, desc = 'Move down page and center' })
vim.keymap.set('n', '<C-k>', '<C-u>zz', { noremap = true, desc = 'Move up page and center' })
vim.keymap.set('n', '<C-j>', '<C-d>zz', { noremap = true, desc = 'Move down page and center' })

vim.keymap.set('n', '<leader>y', '<cmd>Telescope neoclip<CR>', { desc = 'Neoclip Yank menu' })

vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<CR>', { desc = 'ToggleTermToggleAll' })

vim.keymap.set('n', '<leader>z', '<cmd>Yazi<CR>', { desc = 'Toggle Yazi' })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
